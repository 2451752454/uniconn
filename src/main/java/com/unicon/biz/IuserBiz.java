package com.unicon.biz;

import com.unicon.entity.IDENTITYCARD_TABLE;
import com.unicon.entity.PHONE_CARD_TABLE;
import com.unicon.entity.TB_USER;
import com.unicon.entity.MYUSER;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

//@Repository
public interface IuserBiz {
//	public List<TB_FILE> downLoadFile(String name) throws SQLException, IOException;
//	public List<TB_FILE> selectUserFile(TB_FILE TB_FILE) throws SQLException, IOException;
//	public int addFile(TB_FILE TB_FILE) throws SQLException, IOException;
//	public HashMap<String, Object> findAll();
//	public List<MUEU> findAll1();
//	public List<MUEU> findAll2(MUEU MUEU);

	//奇峰得测试登陆
	public List<TB_USER> login(TB_USER TB_USER) throws  SQLException, IOException;

	//测试登陆
	public MYUSER login1(MYUSER muser) throws  SQLException, IOException;

	//电子卡登陆
	public PHONE_CARD_TABLE phoneLogin(PHONE_CARD_TABLE phoneCard) throws  SQLException, IOException;

	//登陆后获取登陆人的信息
	public MYUSER Loos (PHONE_CARD_TABLE PHONE_CARD_TABLE) throws  SQLException, IOException;

	//登陆人的身份证信息
	public IDENTITYCARD_TABLE phoneLoginUser(PHONE_CARD_TABLE PHONE_CARD_TABLE) throws  SQLException, IOException;

//	public List<TB_USER> selectUsers(TB_USER TB_USER) throws SQLException, IOException;
//	public int resign(TB_USER TB_USER) throws SQLException, IOException;

}
