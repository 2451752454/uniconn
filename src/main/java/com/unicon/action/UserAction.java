package com.unicon.action;

import com.unicon.biz.IuserBiz;

import com.unicon.entity.TB_USER;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.io.IOException;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller@RequestMapping("/jsp")
public class UserAction {
	@Resource
	private IuserBiz userBiz;
//	private HashMap<String, Object> menu;
	private String uname;
	private Map<String,String> map = new HashMap<String,String>();
	private List<TB_USER> list;
//	public HashMap<String, Object> findUsers() {
//		menu = userDao.findAll();
//		return menu;
//	}
//	public String selectUsers() throws SQLException, IOException {
//		TB_USER TB_USER = new TB_USER();
//		list = userBiz.selectUsers(TB_USER);
//		return "success";
//	}

	public String checkName(){
		System.out.println(uname);
		if("admin".equals(uname)){
			System.out.println("已注册");
			map.put("msg1","已存在");
		}else{
			map.put("msg1","未存在");
		}
		return "msg1";

	}


	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}
	public Map<String, String> getMap() {
		return map;
	}

	public void setMap(Map<String, String> map) {
		this.map = map;
	}

	public List<TB_USER> getList() {
		return list;
	}

	public void setList(List<TB_USER> list) {
		this.list = list;
	}
}
