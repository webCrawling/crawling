package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.sql.DataSource;

import dto.Dto_join;
import dto.Dto_order;

public class Dao_mypage {

	// field

	Context context;
	DataSource datasource;
	Connection conn;

	String sql;
	String sql2;
	PreparedStatement pstmt;
	ResultSet rs;

	// constructor
	public Dao_mypage() throws NamingException {
		context = new InitialContext();
		datasource = (DataSource) context.lookup("java:comp/env/jdbc/OracleDB");

	}

	// method

	//비밀번호 변경
	public boolean passModification(String id, String pass, String modifiedpass) {

		sql = "select pass from webCrawling where id=?";
		sql2 = "update webcrawling set pass = ? where id = ?";

		try {
			
			//새로운 비밀번호 칸에 입력을 안했을 시 바로 폴스로 리턴
			if(modifiedpass == null) {
				System.out.println("새로운 비밀번호를 입력하지 않음");
				return false;
			}
			
			conn = datasource.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				System.out.println(rs.getString(1));
			if(rs.getString(1).equals(pass)) {

				pstmt = conn.prepareStatement(sql2);
				pstmt.setString(1, modifiedpass);
				pstmt.setString(2, id);
				pstmt.executeUpdate();
				
				conn.close();
				pstmt.close();
				rs.close();
				return true;
				
			}else {
				System.out.println("현재 비밀번호가 틀렸습니다.");
				return false;
			}
			}
		} catch (Exception e) {
			System.out.println("passModification() : 회원수정에 실패 하였습니다.");
			e.printStackTrace();
		}finally{
			if(rs!=null)try{rs.close();}catch(SQLException e){}
			if(pstmt!=null)try{pstmt.close();}catch(SQLException e){}
			if(conn!=null)try{conn.close();}catch(SQLException e){}
		}

		return false;

	}

	//이메일 변경
	public boolean emailModification(String id, String email) {

		sql = "update webcrawling set email = ? where id = ?";

		try {
			//이메일 칸에 입력을 안했을 시 바로 폴스로 리턴
			if(email == null) {
				System.out.println("새로운 이메일을 입력하지 않음");
				return false;
			}
			conn = datasource.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, email);
			pstmt.setString(2, id);
			pstmt.executeUpdate();
			
			conn.close();
			pstmt.close();
			rs.close();
			
		} catch (Exception e) {
			System.out.println("emailModification() : 회원수정에 실패 하였습니다.");
			e.printStackTrace();
			
		}finally{
			if(rs!=null)try{rs.close();}catch(SQLException e){}
			if(pstmt!=null)try{pstmt.close();}catch(SQLException e){}
			if(conn!=null)try{conn.close();}catch(SQLException e){}
		}

		return false;

	}

	//휴대폰 변경
	public boolean phoneModification(String id, String phone) {

		sql = "update webcrawling set phone = ? where id = ?";

		try {
			
			//폰번호 칸에 입력을 안했을 시 바로 폴스로 리턴
			if(phone == null) {
				System.out.println("폰번호를 입력하지 않음");
				return false;
			}
			conn = datasource.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, phone);
			pstmt.setString(2, id);
			pstmt.executeUpdate();
			
			conn.close();
			pstmt.close();
			rs.close();
			
		} catch (Exception e) {
			System.out.println("phoneModification() : 회원수정에 실패 하였습니다.");
			e.printStackTrace();
			
		}finally{
			if(rs!=null)try{rs.close();}catch(SQLException e){}
			if(pstmt!=null)try{pstmt.close();}catch(SQLException e){}
			if(conn!=null)try{conn.close();}catch(SQLException e){}
		}

		return false;

	}
}
