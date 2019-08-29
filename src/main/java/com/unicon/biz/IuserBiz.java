package com.unicon.biz;

import com.unicon.entity.MUEU;
import com.unicon.entity.TB_FILE;

import com.unicon.entity.TB_USER;


import java.io.IOException;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;

//@Repository
public interface IuserBiz {
//	public List<TB_FILE> downLoadFile(String name) throws SQLException, IOException;
//	public List<TB_FILE> selectUserFile(TB_FILE TB_FILE) throws SQLException, IOException;
//	public int addFile(TB_FILE TB_FILE) throws SQLException, IOException;
//	public HashMap<String, Object> findAll();
//	public List<MUEU> findAll1();
//	public List<MUEU> findAll2(MUEU MUEU);
	public List<TB_USER> login(TB_USER TB_USER) throws  SQLException, IOException;
	public List<MUEU> MENU()throws  SQLException, IOException;
//	public List<TB_USER> selectUsers(TB_USER TB_USER) throws SQLException, IOException;
//	public int resign(TB_USER TB_USER) throws SQLException, IOException;

}
