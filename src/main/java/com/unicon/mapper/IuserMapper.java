package com.unicon.mapper;

import com.unicon.entity.MUEU;
import com.unicon.entity.TB_FILE;

import com.unicon.entity.TB_USER;
import org.springframework.stereotype.Repository;

import java.io.IOException;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;

//@Repository
public interface IuserMapper {
//	public List<TB_FILE> downLoadFile(String name) throws SQLException, IOException;
//	public List<TB_FILE> selectUserFile(TB_FILE TB_FILE) throws SQLException, IOException;
//	public int addFile(TB_FILE TB_FILE) throws SQLException, IOException;
//	public HashMap<String, Object> findAll();
//	public List<MUEU> findAll1();
//	public List<MUEU> findAll2(MUEU MUEU);
	public List<TB_USER> login(TB_USER TB_USER) throws  SQLException, IOException;


}
