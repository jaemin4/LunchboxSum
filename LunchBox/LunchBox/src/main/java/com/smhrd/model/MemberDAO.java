package com.smhrd.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import com.smhrd.database.SqlSessionManager;

public class MemberDAO {
	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSessionFactiory();
	
	// 로그인 기능
	public int loginCheck(Member member){
	    int result = 0;
	    SqlSession sqlSession = sqlSessionFactory.openSession(true);
	    // 2. sql구문 실행
	 	// sqlSession.메소드(mapper.xml안에 있는 쿼리문 id값, mapper.xml로 넘겨주고 싶은 값);
	    result = sqlSession.selectOne("com.smhrd.model.MemberDAO.loginCheck", member);
	    System.out.println(result);//값이 잘 담겨있는지 확인1
	    sqlSession.close();
	    return result;
	}
	// 회원가입 기능 
	public int insertMember(Member member) {
		int result = 0;
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		result = sqlSession.insert("com.smhrd.model.MemberDAO.insertMember",member);
		sqlSession.close();
		return result;
	}
	// 중복 아이디 체크 기능
	public String idCheck(String mb_Id) {
		String result = null;
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		result = sqlSession.selectOne("com.smhrd.model.MemberDAO.idCheck",mb_Id);
		sqlSession.close();
		return result;
	}
	// 회원 정보 수정 기능
	public int updateMember(Member member) {
		int result = 0;
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		result = sqlSession.update("com.smhrd.model.MemberDAO.updateMember",member);
		sqlSession.close();
		return result;
	}

}
