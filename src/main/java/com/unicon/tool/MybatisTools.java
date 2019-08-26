package com.unicon.tool;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.IOException;
import java.io.Reader;

public class MybatisTools {
    public static SqlSession session = null;
    public static SqlSession getSession() throws IOException {
        //加载xml
        String xmlpath = "SqlMapConfig.xml";
        Reader reader = Resources.getResourceAsReader(xmlpath);
        SqlSessionFactoryBuilder sfb = new SqlSessionFactoryBuilder();
        SqlSessionFactory sf = sfb.build(reader);
        session = sf.openSession();
        System.out.println(session);
        return session;
    }
    public static void main(String[] args) throws IOException {
        MybatisTools.getSession();
    }
}
