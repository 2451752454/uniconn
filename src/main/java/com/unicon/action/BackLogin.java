package com.unicon.action;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * @Author xyp
 */

@Controller
@RequestMapping(value = "/back-login")
public class BackLogin {

    @RequestMapping(value = "/login.action" ,method = RequestMethod.POST)
    public ModelAndView login(String users) {
        System.out.println("login方法被调用了..." + users);
        return new ModelAndView("back");
    }

    public static void main(String[] args) {
        System.out.println("正常打印");
    }
}
