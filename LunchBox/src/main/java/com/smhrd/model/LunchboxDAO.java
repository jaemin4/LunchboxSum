package com.smhrd.model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class LunchboxDAO {
	
	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSessionFactiory();

	public ArrayList<Lunchbox> lunchList(String mb_id) {
		
		ArrayList<Lunchbox> list = null;
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		list = (ArrayList)sqlSession.selectList("com.smhrd.model.lunchboxDAO.lunchlist", mb_id);
		sqlSession.close();
		
		return list;
	}
	
	

}
