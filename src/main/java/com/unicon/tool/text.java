package com.unicon.tool;

import com.unicon.entity.AdminUser;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * @Author xyp
 */
public class text {
    public static void main(String[] args) {
        ApplicationContext as = new ClassPathXmlApplicationContext("applicationContext.xml");

        AdminUser userMapper = as.getBean("adminUser", AdminUser.class);
        System.out.println(as.getBean("adminUser", AdminUser.class));

    }
}
