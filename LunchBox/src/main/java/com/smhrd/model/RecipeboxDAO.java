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
		sqlSession.close();
		
		
		return list;
	}
	public int select_lbnum() {
		
		LunchBox_Detail result = null;
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		result = sqlSession.selectOne("com.smhrd.model.RecipeboxDAO.Select_lb_num");
		System.out.println(result + " lunchbox_detail 확인!!");
		sqlSession.close();
		
		return result.getLb_seq();
	}
	
	public int Insert_lb_detail(int box_seq,int box_num,String Recipe_code) {
		int result = 0;
		
		LunchBox_Detail Data = new LunchBox_Detail(box_seq,Recipe_code,box_num);
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		result = sqlSession.insert("com.smhrd.model.RecipeboxDAO.Insert_lbdetail",Data);
		sqlSession.close();
		
		return result;
	}

	public int Delete_lb_detail(int box_seq,int box_num) {
		int result = 0;
		
		LunchBox_Detail Data = new LunchBox_Detail(box_seq,box_num);
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		result = sqlSession.insert("com.smhrd.model.RecipeboxDAO.delete_overlap_lb_button",Data);
		
		return result;
	}
	
	public ArrayList<Recipe> select_ReadyIn(int lb_seq) {
		
		ArrayList<Recipe> list = new ArrayList<>();
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		System.out.println(lb_seq+"체크");
		//lb_seq = lb_seq-1;
		list = (ArrayList)sqlSession.selectList("com.smhrd.model.RecipeboxDAO.Select_lunchbox_indata",lb_seq);
		sqlSession.close();
		
		
		return list;
		
	}
	
	
	  public int Insert_Completelb(Tbl_Lunchbox tlx) { int result = 0;
	  
	  Tbl_Lunchbox tbl_lunchbox = tlx;
	  
	  SqlSession sqlSession = sqlSessionFactory.openSession(true); result =
	  sqlSession.insert("com.smhrd.model.RecipeboxDAO.Insert_CompleteData",
	  tbl_lunchbox); sqlSession.close();
	  
	  return result; }
	 
	


}
