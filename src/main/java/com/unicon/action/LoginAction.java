package com.unicon.action;

import com.aliyuncs.exceptions.ClientException;
import com.unicon.biz.IuserBiz;

import com.unicon.entity.*;
import com.unicon.tool.AliyunSmsUtils;
import org.apache.struts2.ServletActionContext;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.*;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller@Transactional@RequestMapping("/jsp1")
public class LoginAction  {
	@Resource
    private IuserBiz userBiz;
	private Users users;
	private TB_USER TB_USER;
	private PHONE_CARD_TABLE phoneCard;
	private MYUSER muser;
	private String remsg;
	public File[] file1;
	public List<String> file1FileName;
	private HashMap<String, Object> menu;


	Map<String,Object> map=new HashMap();
	AliyunSmsUtils result = new  AliyunSmsUtils();


	@RequestMapping("/phoneLogin.action")
	public ModelAndView login1(HttpServletRequest request,@RequestParam(value="PHONECARDNUMBER")String PHONECARDNUMBER,String PHONECARDPASSWORD)
			throws IOException,SQLException {
		System.out.println("测试登陆action");
		System.out.println("action收到得值："+PHONECARDNUMBER);
		System.out.println("action收到得值："+PHONECARDPASSWORD);
        phoneCard = new PHONE_CARD_TABLE(PHONECARDNUMBER,PHONECARDPASSWORD);
		//登陆的手机卡信息
        PHONE_CARD_TABLE loginPhoneUser = userBiz.phoneLogin(phoneCard);

		ModelAndView mv = null;
		if(loginPhoneUser != null){
			System.out.println("登陆后得action用户id:"+loginPhoneUser.getUSERID());
			mv = new ModelAndView("front_Main");
			int loginUserID = loginPhoneUser.getUSERID();
			HttpSession session = request.getSession();
			session.setAttribute("loginPhoneUser",loginPhoneUser);
			session.setAttribute("loginPhoneUserID",loginUserID);
			//登陆的用户
			MYUSER loginPhoneUser1 = userBiz.Loos(loginPhoneUser);
			//登陆的用户身份证
			session.setAttribute("loginIDENTITYCARDID",loginPhoneUser1.getIDENTITYCARDID());

			IDENTITYCARD_TABLE loginPhoneUserIDCard = userBiz.phoneLoginUser(loginPhoneUser);
            //身份证信息
			session.setAttribute("loginPhoneUserCardID",loginPhoneUserIDCard);
            //身份证里的姓名
			session.setAttribute("loginPhoneUserCardIDName",loginPhoneUserIDCard.getUSERNAME());
			//身份证自增id
			session.setAttribute("loginPhoneUserCardIDENTITYCARDID",loginPhoneUserIDCard.getIDENTITYCARDID());
		}else{
			mv = new ModelAndView("error");
		}
		System.out.printf("loginAction测试返回:"+mv);
		return mv;
	}





	@RequestMapping("/login.action")
	public ModelAndView execute(HttpServletRequest request,
								@RequestParam(value="name", required=true, defaultValue="empty")String name,
								String pwd) throws IOException, SQLException {
		System.out.println("调用登录方法...");
		TB_USER = new TB_USER(name,pwd);
        List<TB_USER> list =  userBiz.login(TB_USER);
		ModelAndView mav = null;
		if(list.size()>0) {


//			menu = userBiz.findAll();
//			HttpSession session = request.getSession();
//			session.setAttribute("uname", name);
//			request.setAttribute("menu", menu);
//			mav = new ModelAndView("back");
		}
		return mav;
	}

	@RequestMapping(value="/userinfo3.action", method= RequestMethod.POST, produces="application/json;charset=utf-8")
	@ResponseBody
	public  Map<String,Object>  sendcode(@RequestParam(value="phone",defaultValue="") String phone,HttpServletRequest request)throws ClientException, InterruptedException {
		System.out.println("hello++++++++");
		Map<String, TestCodeInfor> ff=result.msagee(phone);
		System.out.println("66666");
		map.put("手机号",phone);
		return map; //可通过String类型返回信息

	}



//	public String regUser() throws SQLException, IOException {
//		System.out.println("调用注册方法...");
//		String root = ServletActionContext.getRequest().getRealPath("/upload");
//		String path = null;
//		for(int i=0;i<file1.length;i++){
//			File file3 = file1[i];
//			path = root+"\\"+file1FileName.get(i);
//			File file2 = new File(path);
//			saveFile(file3,file2);
//		}
//		TB_USER = new TB_USER(users.getName(),users.getPassword1(),new BigDecimal(1),"启用",users.getSex(),users.getInterest(),users.getInterest1(),users.getPhone(),users.getEmail(),path);
//		int num = userBiz.resign(TB_USER);
//
//		if(num>0) {
//			remsg =  "regsuccess";
//		}
//		return remsg;
//	}




	public String toLogin() {
			remsg =  "error";
		return remsg;
	}






//@Override
//	public void setSession(Map<String,Object> arg){
//		session = arg;
//}


	public void saveFile(File srcFile, File destFile) {
		try {
			InputStream is = new FileInputStream(srcFile);

			String root = ServletActionContext.getRequest().getRealPath(
					"/upload");


			OutputStream os = new FileOutputStream(destFile);

			byte[] buffer = new byte[400];

			int length = 0;

			while ((length = is.read(buffer)) > 0) {
				os.write(buffer, 0, length);
				os.flush();
			}
			is.close();
			os.close();

		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}





	public File[] getFile() {
		return file1;
	}

	public void setFile(File[] file1) {
		this.file1 = file1;
	}
	public Users getUsers() {
		return users;
	}
	public void setUsers(Users users) {
		this.users = users;
	}
	public HashMap<String, Object> getMenu() {
		return menu;
	}

	public void setMenu(HashMap<String, Object> menu) {
		this.menu = menu;
	}
}
