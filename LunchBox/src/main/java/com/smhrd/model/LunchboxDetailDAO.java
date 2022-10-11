package com.smhrd.model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class LunchboxDetailDAO {
	
	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSessionFactiory();

	public ArrayList<Recipe> selectAll(double lb_seq) {
		
		ArrayList<Recipe> boxes = null;
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		boxes = (ArrayList)sqlSession.selectList("com.smhrd.model.LunchboxDetailDAO.lunchboxes", lb_seq);
		sqlSession.close();
		
		return boxes;
	}

}
