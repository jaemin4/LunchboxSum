package com.smhrd.model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class LunchboxDAO {
	
	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSessionFactiory();

	public ArrayList<Lunchbox> lunchList(String mb_id) {
		
		System.out.println(mb_id+" dao ID체크");
		
		ArrayList<Lunchbox> list = null;
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		list = (ArrayList)sqlSession.selectList("com.smhrd.model.lunchboxDAO.lunchlist", mb_id);
		sqlSession.close();
		
		return list;
	}
	

	

	public Lunchbox lunch_DateList(Lunchbox lunch) {
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		Lunchbox box = (Lunchbox)sqlSession.selectOne("com.smhrd.model.lunchboxDAO.lunchlistDate", lunch);
		sqlSession.close();
		
		return box;
	}
	/*
	 * public ArrayList<Recipe> Search_Keyword(String keyword) {
	 * 
	 * ArrayList<Recipe> list = null; SqlSession sqlSession =
	 * sqlSessionFactory.openSession(true);
	 * 
	 * list =
	 * (ArrayList)sqlSession.selectList("com.smhrd.model.RecipeDAO.SelectAll",
	 * keyword); sqlSession.close();
	 * 
	 * return list; }
	 */

	
	

}
