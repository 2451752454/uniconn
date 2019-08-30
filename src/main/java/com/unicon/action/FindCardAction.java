package com.unicon.action;


import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/cjx")
public class FindCardAction {

//    @RequestMapping("/cjx1.action")
//    public ModelAndView sss( HttpServletRequest request){
//     HttpSession session= request.getSession();
//        session .setAttribute("user",123);      //浏览器不关，数据就在
//        //走数据库  获取花费
//        request.setAttribute("FUCK","fuck");    //数据只储存到下个界面就删除
//        return new ModelAndView("front_balance");
//    }
//
//    <a href="path/cjx/cjx1.action"
}
