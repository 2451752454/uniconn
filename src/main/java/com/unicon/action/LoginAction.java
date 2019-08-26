package com.unicon.action;

import com.unicon.biz.IuserBiz;

import com.unicon.entity.TB_USER;
import com.unicon.entity.Users;
import org.apache.struts2.ServletActionContext;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.*;
import java.math.BigDecimal;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;

@Controller@Transactional@RequestMapping("/jsp")
public class LoginAction  {
	@Resource
    private IuserBiz userBiz;
	private Users users;
	private TB_USER TB_USER;
	private String remsg;
	public File[] file1;
	public List<String> file1FileName;
	private HashMap<String, Object> menu;
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
