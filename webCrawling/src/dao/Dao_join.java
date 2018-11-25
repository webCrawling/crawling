package dao;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import dto.Dto_join;

public class Dao_join {
	
	//field
	DataSource datasource;
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	String sql;
	
	//constructor
	public Dao_join() {
		conn = null;
		pstmt = null;
		rs = null;
		sql = null;
		
		try {
			Context init = new InitialContext();
			datasource = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
		}
		catch(Exception e) {
		e.printStackTrace();
		}
	}
	

	//회원가입
	public boolean join(Dto_join dto) {

		
		sql = "INSERT INTO webCrawling VALUES (?,?,?,?)";

		try {
			
			conn = datasource.getConnection();

			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, dto.getId());
			pstmt.setString(2, dto.getPass());
			pstmt.setString(3, dto.getEmail());
			pstmt.setString(4, dto.getPhone());

			pstmt.executeUpdate();
			pstmt.close();

		} catch (Exception e) {
			
			System.out.println("DB 연결에 실패하였습니다.");
			e.printStackTrace();
			return false;
		}finally{
			if(rs!=null) try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException ex){}
			if(conn!=null)try{conn.close();}catch(SQLException e){}
		}
		return true;

	}

	//로그인
	public boolean login(String id, String pass) {
		String username=null;
		sql = "select id from webCrawling where id=? and pass=?";

	
		try {
			conn = datasource.getConnection();

			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, id);
			pstmt.setString(2, pass);
			
			System.out.println(id);
			System.out.println(pass);
			
			rs = pstmt.executeQuery();
			
			
			rs.next();
		
			
			username = (String)(rs.getString(1));
			System.out.println("  id: "+username);
			if(username==null)return false;
			else {
				
				
				return true;}
		} 
		catch (Exception e) {
			System.out.println("연결에 실패하였습니다.");
			e.printStackTrace();
		}finally{
			if(rs!=null) try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException ex){}
			if(conn!=null)try{conn.close();}catch(SQLException e){}

		}

		return false;
	}
	

	//중복확인
	public boolean CheckingId(String id) {
	
	sql = "select id from webCrawling where id=?";
	
	try {
		conn = datasource.getConnection();

		pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1, id);
		rs = pstmt.executeQuery();
		
		if(rs.next()){	//id 존재		
			
			System.out.println(rs.getString(1));
			return false;
		}else {
			
			return true;
		}
	}
	catch (Exception e) {
		System.out.println("연결에 실패하였습니다.");
		e.printStackTrace();
	}finally{
		if(rs!=null)try{rs.close();}catch(SQLException e){}
		if(pstmt!=null)try{pstmt.close();}catch(SQLException e){}
		if(conn!=null)try{conn.close();}catch(SQLException e){}
	}
		
	
		return false;
	}
	
	//아이디 찾기
	public void FindingId(String id) {
		
		sql = "select id from webCrawling where id=?";
		
		try {
			conn = datasource.getConnection();

			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			if(rs.next()){	//id 존재		
				
				System.out.println(rs.getString(1));
				
			}else {
				
				
			}
		}
		catch (Exception e) {
			System.out.println("연결에 실패하였습니다.");
			e.printStackTrace();
		}finally{
			if(rs!=null)try{rs.close();}catch(SQLException e){}
			if(pstmt!=null)try{pstmt.close();}catch(SQLException e){}
			if(conn!=null)try{conn.close();}catch(SQLException e){}
		}
		
	}
}