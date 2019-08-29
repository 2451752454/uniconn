package com.unicon.action;

import com.unicon.biz.IuserBiz;
import com.unicon.entity.MUEU;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.io.IOException;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;

@Controller
@Transactional
@RequestMapping("/jsp")
public class MenuAction {
    @Resource
    private IuserBiz userBiz;
    @RequestMapping("/menu.action")
    public ModelAndView execute() throws IOException, SQLException {
        System.out.println("菜单");
        List<MUEU> MENU = userBiz.MENU();
        ModelAndView mav = null;
        return mav;
    }

}
