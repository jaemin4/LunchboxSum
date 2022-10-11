package com.smhrd.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class NutritionfactDAO {

	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSessionFactiory();

	// 아이디에 맞는 정보입력 기능
	public int insertNutritionfact(Nutritionfact nutritionfact) {
		int result = 0;
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		result = sqlSession.insert("com.smhrd.model.NutritionfactDAO.insertNutritionfact", nutritionfact);
		sqlSession.close();
		return result;
	}

	// 아이디에 맞는 회원 삭제 기능(자식 테이블)
	public int deleteNutritionfact(Nutritionfact nutritionfact) {
		int result = 0;
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		result = sqlSession.delete("com.smhrd.model.NutritionfactDAO.deleteNutritionfact", nutritionfact);
		sqlSession.close();
		return result;
	}

	// 부모 테이블인 Member의 회원 정보 수정시 자식 테이블인 Nutritionfact의 영양소 정보 업데이트 기능
	public int updateNutritionfact(Nutritionfact nutritionfact) {
		int result = 0;
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		result = sqlSession.delete("com.smhrd.model.NutritionfactDAO.updateNutritionfact", nutritionfact);
		sqlSession.close();
		return result;
	}

	// 사용자 아이디로 권장 영양소 출력
	public Nutritionfact selectNutri(String mb_Id) {
		Nutritionfact nutri = null;
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		nutri = sqlSession.selectOne("com.smhrd.model.NutritionfactDAO.selectUserNutri", mb_Id);
		sqlSession.close();
		return nutri;
	}
}
