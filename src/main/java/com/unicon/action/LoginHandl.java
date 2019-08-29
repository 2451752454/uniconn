package com.unicon.action;

import com.aliyuncs.dysmsapi.model.v20170525.SendSmsResponse;
import com.aliyuncs.exceptions.ClientException;
import com.unicon.biz.TestCodeInfor;
import com.unicon.tool.AliyunSmsUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

/**
 * @author zhengzhujungeng
 * @date 2019/8/27 - 21:08
 */
@Controller
@RequestMapping("/login")
public class LoginHandl {

    AliyunSmsUtils result = new  AliyunSmsUtils();
    Map<String,Object> map=new HashMap();
    @RequestMapping("/login.action")
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
    public  Map<String,Object>  sendcode(@RequestParam(value="phone",defaultValue="") String phone,HttpServletRequest request)throws ClientException, InterruptedException {
        System.out.println("hello++++++++");

        Map<String, TestCodeInfor> ff=result.msagee(phone);
        System.out.println("66666");
        map.put("手机号","17689439512");
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