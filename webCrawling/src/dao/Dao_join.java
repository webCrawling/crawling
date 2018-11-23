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
	

	//method
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

	
	public String login(String id, String pass) {
		String username=null;
		sql = "select id from webCrawling where id=? and pw=?";

	
		try {
			conn = datasource.getConnection();

			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, id);
			pstmt.setString(2, pass);
			
			rs = pstmt.executeQuery();
			
			
			rs.next();
		
			
			username = (String)(rs.getString(1));
			System.out.println("  id: "+username);
			
			
		} 
		catch (Exception e) {
			System.out.println("연결에 실패하였습니다.");
			e.printStackTrace();
		}finally{
			if(rs!=null) try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException ex){}
			if(conn!=null)try{conn.close();}catch(SQLException e){}

		}

		return username;
	}
	
	public ArrayList<Dto_join> list() {
		
		ArrayList<Dto_join> list = new ArrayList<>();
		sql = "select * from webCrawling"; 

		try {
			conn = datasource.getConnection();

			pstmt = conn.prepareStatement(sql);
			
			rs = pstmt.executeQuery();

			int i=0;
			while (rs.next()) {
				Dto_join dto = new Dto_join();
				dto.setId(rs.getString(1));
				dto.setPass(rs.getString(2));
				dto.setEmail(rs.getString(3));
				dto.setPhone(rs.getString(4));
				list.add(dto);
				i++;
			}

		} 
		catch (Exception e) {
			System.out.println("연결에 실패하였습니다.");
			e.printStackTrace();
		}finally{
			if(rs!=null) try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException ex){}
		}

		return list;
	}
	
	
	public boolean CheckingId(String id) {
	
	sql = "select id from webCrawling where id=?";
	
	try {
		conn = datasource.getConnection();

		pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1, id);
		rs = pstmt.executeQuery();
		
		if(rs.next()){	//id 존재		
			System.out.println("예스!");
			System.out.println(rs.getString(1));
			return true;
		}else {
			System.out.println("노!");
			return false;
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
		
	
		return true;
	}
	
	
	public void delete(String name) {
		sql = "delete from webCrawling where name=?";
		
	
		try {
			conn = datasource.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.executeUpdate();
			
			
		} 
		catch (Exception e) {
			System.out.println("연결에 실패하였습니다.");
			e.printStackTrace();
		}finally{
			if(rs!=null) try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException ex){}
		}

	}
	
	
	
		@SuppressWarnings("finally")
		public Dto_join info(String name) {
		Dto_join dto = new Dto_join();
		sql = "select * from webCrawling where name=?";

		try {
			conn = datasource.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1,name);
			
			rs = pstmt.executeQuery();

			System.out.println("while진입전이다");
			if (rs.next()) {
				System.out.println("while진입했다.");
				dto.setId(rs.getString(1));
				dto.setPass(rs.getString(2));
				dto.setEmail(rs.getString(3));
				dto.setPhone(rs.getString(4));
			}
		
			
		
			
		} 
		catch (Exception e) {
			System.out.println("연결에 실패하였습니다.");
			e.printStackTrace();
		}finally{
			if(rs!=null) try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException ex){}
			if(conn!=null)try{conn.close();}catch(SQLException e){}

		return dto;
	}
	
	
		}
	

}
