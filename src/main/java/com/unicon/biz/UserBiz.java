package com.unicon.biz;
import com.unicon.entity.TB_USER;
import com.unicon.entity.MUEU;
import com.unicon.entity.TB_FILE;


import com.unicon.mapper.IuserMapper;
import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import java.io.IOException;
import java.math.BigDecimal;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;

@Service
public class UserBiz implements IuserBiz {
	@Resource
	private IuserMapper iuserMapper;


//	@Override
//	public List<TB_FILE> downLoadFile(String name) throws SQLException, IOException {
//		return iuserMapper.downLoadFile(name);
//	}
//
//	@Override
//	public List<TB_FILE> selectUserFile(TB_FILE TB_FILE) throws SQLException, IOException {
//
//		List<com.unicon.entity.TB_FILE> list = iuserMapper.selectUserFile(TB_FILE);
//		return list;
//	}
//
//	@Override
//	public int addFile(TB_FILE TB_FILE) throws SQLException, IOException {
//
//		int num = iuserMapper.addFile(TB_FILE);
//
//
//		if(num>0){
//			return num;
//		}
//
//
//
//		return 0;
//	}
//
//	@Override
//	public HashMap<String, Object> findAll() {
//		        HashMap<String, Object> menu = new HashMap<>();
//		        List<MUEU> list = iuserMapper.findAll1();
//				List<MUEU> list2 =null;
//				for (int i = 0; i < list.size(); i++) {
//					MUEU MUEU = new MUEU(new BigDecimal(1),list.get(i).getJURISDICTIONNAME());
//					list2 = iuserMapper.findAll2(MUEU);
//					String sql2 = getSQL(1,list.get(i).getJURISDICTIONNAME());
//					if(list2.size()!=0) {
//						menu.put(list.get(i).getJURISDICTIONNAME(), list2);
//					}
//				}
//             return menu;
//			}
//
//	@Override
//	public List<MUEU> findAll1() {
//
//		return iuserMapper.findAll1();
//	}
//
//	@Override
//	public List<MUEU> findAll2(MUEU MUEU) {
//
//		return iuserMapper.findAll2(MUEU);
//	}
//
//
	@Override
	public List<TB_USER> login(TB_USER TB_USER) throws SQLException, IOException {
		System.out.println("调用");
		System.out.println(iuserMapper);
		List<TB_USER> list = iuserMapper.login(TB_USER);
		System.out.println(list.size());
		return list;
	}
//	@Override
//	public List<TB_USER> selectUsers(TB_USER TB_USER) throws SQLException, IOException {
//		List<TB_USER> list = iuserMapper.selectUsers(TB_USER);
//		return list;
//	}
//
//	@Override
//	public int resign(TB_USER TB_USER) throws SQLException, IOException {
//		int bum = iuserMapper.resign(TB_USER);
//		session.commit();
//
//		return bum;
//	}

	public String getSQL(int role,String name) {
		String sql2 = "select tb_role.roleid ROLEID,tb_role.rolename ROLENAME,tb_jurisdiction.jurisdictionid JURISDICTIONID,tb_jurisdiction.jurisdictionname JURISDICTIONNAME,tb_menu.menuid MENUID,tb_menu.menuname MENUNAME,tb_menu.URL URL from TB_JM,TB_RJ,TB_ROLE,TB_JURISDICTION,TB_MENU WHERE tb_rj.roleid = tb_role.roleid AND tb_rj.jurisdictionid = tb_jurisdiction.jurisdictionid\r\n" +
				" AND tb_jm.jurisdictionid = tb_jurisdiction.jurisdictionid AND tb_jm.menuid = tb_menu.menuid and tb_role.roleid = "+role+" and tb_jurisdiction.jurisdictionname like "+"'"+name+"'AND TB_JM.ROLE LIKE '"+role+"'";
		return sql2;
	}
}
