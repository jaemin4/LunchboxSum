package com.smhrd.model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.fasterxml.jackson.annotation.JsonTypeInfo;
import com.smhrd.database.SqlSessionManager;

public class RecipeboxDAO {
	
	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSessionFactiory();

	public ArrayList<Recipe> Search_Keyword(String keyword) {
		
		ArrayList<Recipe> list = new ArrayList<>();
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		System.out.println(keyword+"체크");
		

		list = (ArrayList)sqlSession.selectList("SelectAll","%"+keyword+"%");
		System.out.println(list.get(0));
		sqlSession.close();
		
		
		return list;
	}
	

}
