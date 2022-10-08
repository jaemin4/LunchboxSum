package com.smhrd.model;

import java.util.ArrayList;

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
	public int idCheck(String mb_Id) {
		int result = 0;
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
	// 회원 탈퇴 기능
	public int deleteMember(Member member) {
		int result = 0;
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		result = sqlSession.delete("com.smhrd.model.MemberDAO.deleteMember",member);
		sqlSession.close();
		return result;
	}
	// admin 전용 회원 조회 기능
	public ArrayList<Member> selectMember() {
		ArrayList<Member> list = null;
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		list = (ArrayList)sqlSession.selectList("com.smhrd.model.MemberDAO.selectMember");
		sqlSession.close();
		return list;
	}
	// 회원 비밀번호 찾기 기능
	public Member searchpassword(Member member) {
		Member result = null;
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		result = sqlSession.selectOne("com.smhrd.model.MemberDAO.searchpassword",member);
		sqlSession.close();
		return result;
	}
	// 회원 성별 분석 기능
	public int selectGender(Member member) {
		int result = 0;
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		result = sqlSession.selectOne("com.smhrd.model.MemberDAO.selectGender", member);
		sqlSession.close();
		return result;
	}
	// 회원 성별+연령대 분석 기능
	public int selectGenderBirth20(Member member) {
		int result = 0;
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		result = sqlSession.selectOne("com.smhrd.model.MemberDAO.selectGenderBirth20",member);
		sqlSession.close();
		return result;
	}
	public int selectGenderBirth30(Member member) {
		int result = 0;
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		result = sqlSession.selectOne("com.smhrd.model.MemberDAO.selectGenderBirth30",member);
		sqlSession.close();
		return result;
	}
	public int selectGenderBirth40(Member member) {
		int result = 0;
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		result = sqlSession.selectOne("com.smhrd.model.MemberDAO.selectGenderBirth40",member);
		sqlSession.close();
		return result;
	}
	public int selectGenderBirth50(Member member) {
		int result = 0;
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		result = sqlSession.selectOne("com.smhrd.model.MemberDAO.selectGenderBirth50",member);
		sqlSession.close();
		return result;
	}
	// 로그인 시 사용한 아이디와 비밀번호 값을 받아서 나이와 성별을 조회하는 기능
	public ArrayList<Member> selectGetgenderage(Member member) {
		ArrayList<Member> list = null;
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		list = (ArrayList)sqlSession.selectList("com.smhrd.model.MemberDAO.selectGetgenderage", member);
		sqlSession.close();
		return list;
	}
}
