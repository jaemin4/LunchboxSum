package com.smhrd.model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class CommentDAO {

	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSessionFactiory();

	public ArrayList<Comment> commentAll(String article_seq) {

		ArrayList<Comment> list2 = null;
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		list2 = (ArrayList) sqlSession.selectList("com.smhrd.model.CommentDAO.commentAll", article_seq);
		sqlSession.close();
		return list2;

	}

	public int InsertComment(Comment comment) {

		int result4 = 0;
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		result4 = sqlSession.insert("com.smhrd.model.CommentDAO.InsertComment", comment);
		sqlSession.close();
		return result4;
	}

	public int DeleteComment(String cmt_seq) {
		int result5 = 0;
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		result5 = sqlSession.delete("com.smhrd.model.CommentDAO.DeleteComment", cmt_seq);
		sqlSession.close();
		return result5;
	}

}
