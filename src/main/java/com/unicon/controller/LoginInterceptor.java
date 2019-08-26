package com.unicon.controller;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;

import java.util.Map;

public class LoginInterceptor implements Interceptor {

    @Override
    public void destroy() {

    }

    @Override
    public void init() {

    }

    @Override
    public String intercept(ActionInvocation actionInvocation) throws Exception {
        System.out.println("interceptor---------");
        Map<String,Object> map = actionInvocation.getInvocationContext().getSession();
        Object name = map.get("uname");
        String path;
        if(null==name){
            path = "login";
        }else{
            path = actionInvocation.invoke();
        }
        System.out.println("interceptor---------"+path);
        return path;
    }
}
