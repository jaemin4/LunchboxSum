package com.smhrd.model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class BoardDAO {
	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSessionFactiory();

	public ArrayList<Board> selectAll() {
		ArrayList<Board> list = null;

		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		list = (ArrayList) sqlSession.selectList("com.smhrd.model.BoardDAO.selectAll");
		sqlSession.close();
		return list;

	}

	public int insert(Board board) {
		int result = 0;

		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		result = sqlSession.insert("com.smhrd.model.BoardDAO.insert", board);
		sqlSession.close();
		return result;
	}

	public Board selectOne(String article_seq) {
		Board result = null;
		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		result = sqlSession.selectOne("com.smhrd.model.BoardDAO.selectOne", article_seq);
		sqlSession.close();
		return result;
	}

	public int Update(Board board) {

		int result2 = 0;

		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		result2 = sqlSession.update("com.smhrd.model.BoardDAO.Update", board);
		sqlSession.close();
		return result2;
	}

	public int UpdateRead(Board board) {

		int result = 0;

		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		result = sqlSession.update("com.smhrd.model.BoardDAO.UpdateRead", board);
		sqlSession.close();
		return result;
	}

	public int UpdateLike(Board board) {
		int result = 0;

		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		result = sqlSession.update("com.smhrd.model.BoardDAO.UpdateLike", board);
		sqlSession.close();
		return result;
	}

	public int Delete(String article_seq) {
		int result3 = 0;
		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		result3 = sqlSession.delete("com.smhrd.model.BoardDAO.Delete", article_seq);
		sqlSession.close();
		return result3;
	}

	public ArrayList<Board> BestlistAll() {
		ArrayList<Board> list3 = null;

		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		list3 = (ArrayList) sqlSession.selectList("com.smhrd.model.BoardDAO.BestlistAll");
		sqlSession.close();
		return list3;

	}

	public int CountAll() {
		int result = 0;
		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		result = sqlSession.selectOne("com.smhrd.model.BoardDAO.countAll");
		sqlSession.close();
		return result;
	}

}
