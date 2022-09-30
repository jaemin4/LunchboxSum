package com.smhrd.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

public class MemberDAO {
	int cnt = 0;
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	Member dto = null;

	public void conn() {
	    try {
	        Class.forName("oracle.jdbc.driver.OracleDriver");
	        String db_url = "jdbc:oracle:thin:@localhost/:1521:xe";
	        String db_id = "cgi_3_0924_1";
	        String db_pw = "smhrd1";

	        conn = DriverManager.getConnection(db_url, db_id, db_pw);
	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	}

	public void close() {
	    try {

	        if (rs != null) {
	            rs.close();
	        }
	        if (psmt != null) {
	            psmt.close();
	        }
	        if (conn != null) {
	            conn.close();
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	}
	// 회원가입 메소드
	public int join(Member dto) {
	        conn();

			String SQL = "insert into tbl_member values (?, ?, ?, ?,sysdate,'u')";
			try {
				psmt = conn.prepareStatement(SQL);
				psmt.setString(1, dto.getMb_Id());
				psmt.setString(2, dto.getMb_Pw());
				psmt.setString(3, dto.getMb_Birthdate());
				psmt.setString(4, dto.getMb_Gender());
	            psmt.setDate(5, (java.sql.Date) dto.getMb_Joindate());
	            psmt.setString(6, dto.getMb_Type());
				
				cnt = psmt.executeUpdate();
			} catch (Exception e) {
				e.printStackTrace();
			} finally{
	            close();
	        }
			return cnt;
		}
	// 로그인 체크 메소드 
	public int loginCheck(Member dto) {

			conn();

			try {
				String sql = "select count(*) cnt from tbl_member where mb_id = ? and mb_pw = ?";
				psmt = conn.prepareStatement(sql);

				psmt.setString(1, dto.getMb_Id());
				psmt.setString(2, dto.getMb_Pw());

				rs = psmt.executeQuery();

				if (rs.next()) {

					String MbId = rs.getString(1);
					String MbPw = rs.getString(2);

					dto = new Member(dto.getMb_Id(), dto.getMb_Pw());
				}
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close();
			}
			return cnt;
		}
	// 아이디 중복 체크 메소드
	public int confirmId(String MbId){

	        conn();

	        int result = -1;
	        try {
	            String sql = "select mb_id from tbl_member where mb_id = ?";
	            psmt = conn.prepareStatement(sql);
	            psmt.setString(1, dto.getMb_Id());
	    
	            rs = psmt.executeQuery();
	    
	            if (rs.next()) {//중복된 아이디가 존재
	                result = 1;
	            }else{//중복된 아이디가 존재하지 않음
	                result = -1;
	            }
	        } catch (Exception e) {
	            e.printStackTrace();
	        } finally{
	            close();
	        }
	        return result;

	    }
	// 회원정보 변경 메소드
	public int updateMember(Member dto){

	        conn();

	        try {
	            String sql = "update tbl_member set mb_birthdate=?, mb_gender=? where mb_id=?";
	            psmt = conn.prepareStatement(sql);
	            psmt.setString(3, dto.getMb_Birthdate());
	            psmt.setString(4, dto.getMb_Gender());
	            
	            cnt = psmt.executeUpdate();

	        } catch (Exception e) {
	            e.printStackTrace();
	        } finally{
	            close();
	        }
	        return cnt;
	}
}
