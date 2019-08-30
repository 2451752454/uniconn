package com.unicon.action;

import com.aliyuncs.exceptions.ClientException;
import com.unicon.biz.IuserBiz;
import com.unicon.entity.IDENTITYCARD_TABLE;
import com.unicon.entity.MYUSER;
import com.unicon.entity.PHONE_CARD_TABLE;
import com.unicon.entity.TestCodeInfor;
import com.unicon.tool.AliyunSmsUtils;
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
import java.io.IOException;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

/**
 * @author zhengzhujungeng
 * @date 2019/8/27 - 21:08
 */
@Controller@Transactional@RequestMapping("/jsp")
public class LoginnAction {
    @Resource
    private IuserBiz userBiz;
    private PHONE_CARD_TABLE phoneCard;
    AliyunSmsUtils result = new AliyunSmsUtils();
    Map<String,Object> map=new HashMap();

    /* form表单提交 服务密码登录*/
    @RequestMapping("/loginnn.action")
    public ModelAndView login(@RequestParam(value="Code",defaultValue="empty") String testCode,
                              @RequestParam(value="phone",defaultValue="empty") String phone, HttpServletRequest request)throws ClientException, InterruptedException{
        System.out.println("进来了");
        System.out.println(testCode+  phone );
        //String serverPath =   request.getScheme() + "://"+ request.getServerName() + ":" +
        //	request.getServerPort()+request.getContextPath() + "/";

        TestCodeInfor testCodeInfor= result.getTestCodeInforMap().get(phone);

        //这边可以判断 时间补超过多久可以 验证testCodeInfor.getSendDate().
        ModelAndView mav = null;
        if( String.valueOf(testCodeInfor.getCode()).equals(testCode)){
            result.getTestCodeInforMap().remove(phone);   //验证成功后 移除验证码
            mav = new ModelAndView("back");   //登陆成功跳转界面
            System.out.println("成功");
        }
        return mav;
    }

    @RequestMapping(value="/userinfo3.action", method= RequestMethod.POST, produces="application/json;charset=utf-8")
    @ResponseBody
    public  Map<String,Object>  sendcode( String phone, HttpServletRequest request)throws ClientException, InterruptedException {
        System.out.println("hello++++++++"+phone);

        Map<String, TestCodeInfor> ff=result.msagee(phone);
        System.out.println("66666");
        map.put("手机号",phone);
        return map; //可通过String类型返回信息

    }

   /* form表单提交 手机短信登录*/
/*
    @RequestMapping("/login.action")
    public ModelAndView ptlogin(@RequestParam(value="txtUser",defaultValue="empty") String txtUser,
                              @RequestParam(value="password",defaultValue="empty") String password, HttpServletRequest request)throws ClientException, InterruptedException{
        System.out.println("进来了哦");
        System.out.println(txtUser+  password );

        ModelAndView mav = null;

            mav = new ModelAndView("back");   //登陆成功跳转界面
            System.out.println("成功");
        return mav;
    }
*/


/*ajax服务密码登录*/
    @RequestMapping(value="/login.action", method= RequestMethod.POST, produces="application/json;charset=utf-8")
    @ResponseBody
    public  Map<String,Object>  pwdlogin(@RequestParam(value="uphone",defaultValue="123") String uphone, String PHONECARDPASSWORD1, HttpServletRequest request)throws IOException, SQLException {
        System.out.println("进来了哦123213");
        System.out.println(uphone+  PHONECARDPASSWORD1 );
        phoneCard = new PHONE_CARD_TABLE(uphone,PHONECARDPASSWORD1);
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
           // map.put(PHONECARDNUMBER,"登陆成功");
            map.put("msg","1");
            map.put("phone",uphone);
        }else{
            map.put("msg","0");
        }
        return map; //可通过String类型返回信息

    }

  /*  ajax 手机验证码登录*/

    @RequestMapping(value="/loginn.action", method= RequestMethod.POST, produces="application/json;charset=utf-8")
    @ResponseBody
    public  Map<String,Object>  msglogin(@RequestParam(value="Code",defaultValue="") String Code, @RequestParam(value="phone",defaultValue="") String phone, HttpServletRequest request) {
        System.out.println("进来了");
        System.out.println(Code+  phone );

        map.put(Code,phone);
        return map; //可通过String类型返回信息

    }

















//        SendSmsResponse responn=result.msagee().get("17689439512");
       /* if( identity == null || identity.length() == 0 ){
            result.setState(Result.ERROR);
            result.setMessage("证件号为空");
            return result;
        }
        if(phone== null || phone.length() == 0 ){
            result.setState(Result.ERROR);
            result.setMessage("手机号为空");
            return result;
        }
        if( testCode == null || testCode.length() == 0 ){
            result.setState(Result.ERROR);
            result.setMessage("验证码为空");
            return result;
        }
        TestCodeInforVo testCodeInfor =  (TestCodeInforVo) testCodeInforMap.get(phone);
        if( testCodeInfor == null || testCodeInfor.getCode() == null || testCodeInfor.getCode().length()==0 ){
            result.setState(Result.ERROR);
            result.setMessage("验证码不存在");
            return result;
        }

        if(!testCode.equals(testCodeInfor.getCode())){
            result.setState(Result.ERROR);
            result.setMessage("验证码错误");
            return result;
        }
        testCodeInforMap.remove(phone);
        //验证验证码是否过期
        if( System.currentTimeMillis()- testCodeInfor.getDate() > testCodeOutDate ){
            result.setState(Result.ERROR);
            result.setMessage("验证码已过期");
            return result;
        }

        List<UserEntity> users = userService.getUserByPhoneIdentity(phone,identity);
        if( users.isEmpty()){
            result.setState(Result.ERROR);
            result.setMessage("用户不存在");
            return result;
        }
        if( users.size() !=  1){
            result.setState(Result.ERROR);
            result.setMessage("认证用户不唯一");
            return result;
        }
        if(  users.get(0).getAccountStatus() != null &&  users.get(0).getAccountStatus().equals("0")){
            result.setState(Result.ERROR);
            result.setMessage("该用户被冻结");
            return result;
        }
        UserEntity user  = users.get(0);
        user.setQrCode(user.getQrCode());
        user.setPersonalPhotos(user.getPersonalPhotos());
        user.setIdCardAvatarFace(user.getIdCardAvatarFace());
        user.setIdCardNationalEmblem(user.getIdCardNationalEmblem());


        result.setState(Result.SUCCESS);
        result.setMessage("登录成功");
        AppLoginUser appUser=new AppLoginUser();
        HttpSession session=request.getSession();
        appUser.setUserID(user.getId());
        appUser.setUserName(user.getName());
        appUser.setUserNum(user.getUserNumber());
        OrgStructure org=orgService.getOrgByAccount(user.getName());
        //appUser.setOrgId(org.getOrgId());
        session.setAttribute("appLoginUser", appUser);
        result.setData(user);*/


}