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

import javax.sql.DataSource;

import dto.Dto_event;
import dto.Dto_join;
import dto.Dto_order;


public class Dao_admin {

	// field

	Context context;
	DataSource datasource;

	Connection conn;

	String sql;
	PreparedStatement pstmt;
	ResultSet rs;

	// constructor
	public Dao_admin() throws NamingException {
		context = new InitialContext();
		datasource = (DataSource) context.lookup("java:comp/env/jdbc/OracleDB");

	}

	// method

	
	public ArrayList<Dto_join> getMemberList() {

		
		ArrayList<Dto_join> list_member = new ArrayList<>();

		sql = "select * from webcrawling";

		try {
			conn = datasource.getConnection();

			pstmt = conn.prepareStatement(sql);

			rs = pstmt.executeQuery();

			while (rs.next()) {
				Dto_join dto = new Dto_join();
				dto.setId(rs.getString(1));
				dto.setPass(rs.getString(2));
				dto.setEmail(rs.getString(3));
				dto.setPhone(rs.getString(4));
				list_member.add(dto);
			}
			rs.close();

		} catch (Exception e) {
			System.out.println("getMemberList() : ");
			e.printStackTrace();
		}

		return list_member;
	}

	
	public Dto_join getMemberInformation(String id) {

		Dto_join dto = new Dto_join();
		sql = "select * from webcrawling where id=?";

		try {
			conn = datasource.getConnection();
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, id);

			rs = pstmt.executeQuery();

			if (rs.next()) {
				dto.setId(rs.getString(1));
				dto.setPass(rs.getString(2));
				dto.setEmail(rs.getString(3));
				dto.setPhone(rs.getString(4));
			}
			rs.close();

		} catch (Exception e) {
			System.out.println("getMemberInformation() :");
			e.printStackTrace();
		}

		return dto;
	}

	
	public ArrayList<Dto_order> getOrderList_member(String id, int state){
		
		ArrayList<Dto_order> list = new ArrayList<>();
		sql = "select * from ordermenu where id=? and statement=0";

		try {
			conn = datasource.getConnection();
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, id);

			rs = pstmt.executeQuery();

			while (rs.next()) {
				Dto_order dto = new Dto_order();

				dto.setId(rs.getString(1));
				dto.setMenu(rs.getString(2));
				dto.setPrice(rs.getInt(3));
				dto.setQuan(rs.getInt(4));

				list.add(dto);
			}
			rs.close();

		} catch (Exception e) {
			System.out.println("getWholeorder() : ");
			e.printStackTrace();
		}

		return list;
		
	}
	
	
	
	public Dto_order getMemberOrderList(String id) {

		Dto_order dto = new Dto_order();
		sql = "select * from ordermenu where id=?";

		try {
			conn = datasource.getConnection();
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, id);

			rs = pstmt.executeQuery();

			if (rs.next()) {
				dto.setId(rs.getString(1));
				dto.setMenu(rs.getString(2));
				dto.setPrice(rs.getInt(3));
				dto.setQuan(rs.getInt(4));
			}
			rs.close();

		} catch (Exception e) {
			System.out.println("getMemberOrderList() :");
			e.printStackTrace();
		}

		return dto;

	}

	
	public ArrayList<Dto_order> getWholeorder(String id) {

		ArrayList<Dto_order> list = new ArrayList<>();
		sql = "select * from ordermenu where id=?";

		try {
			conn = datasource.getConnection();
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, id);

			rs = pstmt.executeQuery();

			while (rs.next()) {
				Dto_order dto = new Dto_order();

				dto.setId(rs.getString(1));
				dto.setMenu(rs.getString(2));
				dto.setPrice(rs.getInt(3));
				dto.setQuan(rs.getInt(4));

				list.add(dto);
			}
			rs.close();

		} catch (Exception e) {
			System.out.println("getWholeorder() : ");
			e.printStackTrace();
		}

		return list;

	}

	
	public ArrayList<Dto_order> deliverAdmin() {

		ArrayList<Dto_order> list = new ArrayList<>();
		sql = "select * from ordermenu where statement=?";

		try {
			conn = datasource.getConnection();
			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, 0);

			rs = pstmt.executeQuery();

			while (rs.next()) {
				Dto_order dto = new Dto_order();

				dto.setId(rs.getString(1));
				dto.setMenu(rs.getString(2));
				dto.setPrice(rs.getInt(3));
				dto.setQuan(rs.getInt(4));

				list.add(dto);
			}
			rs.close();

		} catch (Exception e) {
			System.out.println("deliverAdmin() : ");
			e.printStackTrace();
		}

		return list;

	}

	
	public void orderComplete(String id, int price, int state) throws SQLException {
		sql = "update ordermenu set statement = 1 where id=? and price=? and statement= ?";

		conn = datasource.getConnection();
		pstmt = conn.prepareStatement(sql);

		pstmt.setString(1, id);
		pstmt.setInt(2, price);
		pstmt.setInt(3, state);

		rs = pstmt.executeQuery();

		rs.close();

	}

	// 珥� �닔�엯 怨꾩궛
	public int doStatistics() {
		int sum = 0;
		sql = "select price from ordermenu";

		try {
			conn = datasource.getConnection();
			pstmt = conn.prepareStatement(sql);

			rs = pstmt.executeQuery();

			while (rs.next()) {
				int price = rs.getInt(1);

				sum = sum + price;
			}
			rs.close();

			// test
			System.out.println("sum = " + sum);

		} catch (Exception e) {
			System.out.println("doStatistics() : �넻怨� �떎�뙣");
			e.printStackTrace();
		}

		return sum;

	}
	
	// �씠踰ㅽ듃 怨듭��궗�빆 �삱由ш린
	public void uploadEvent(String title, String content) {
		
		sql = "INSERT INTO event VALUES (?,?)";

		try {
			
			conn = datasource.getConnection();

			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, title);
			pstmt.setString(2, content);
			

			pstmt.executeUpdate();
			pstmt.close();

		} catch (Exception e) {
			
			System.out.println("�씠踰ㅽ듃 �뾽濡쒕뱶 �삁�쇅 諛쒖깮");
			e.printStackTrace();
		}
		finally{
			if(rs!=null) try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException ex){}
			if(conn!=null)try{conn.close();}catch(SQLException e){}
		}
		
		
	}
	
	// �씠踰ㅽ듃 怨듭� 由ъ뒪�듃 媛��졇�삤湲�
	public ArrayList<Dto_event> getEventList(){
		
		ArrayList<Dto_event> list = new ArrayList<>();
		sql = "select * from event";

		try {
			conn = datasource.getConnection();
			pstmt = conn.prepareStatement(sql);

			rs = pstmt.executeQuery();

			while (rs.next()) {
				Dto_event dto = new Dto_event();

				dto.setTitle(rs.getString(1));
				dto.setContent(rs.getString(2));

				list.add(dto);
			}
			rs.close();

		} catch (Exception e) {
			System.out.println("getEventList() : �씠踰ㅽ듃 紐⑸줉 媛��졇�삤湲� �떎�뙣");
			e.printStackTrace();
		}

		return list;
		
		
		
	}
	

	// �쉶�썝 �궘�젣
	public void delete(String id) {
		sql = "delete from webcrawling where id=?";

		try {
			conn = datasource.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.executeUpdate();
			
			pstmt.close();
			conn.close();
			
		} catch (Exception e) {
			System.out.println("delete() : �쉶�썝�궘�젣�뿉 �떎�뙣 �븯���뒿�땲�떎.");
			e.printStackTrace();

		} 

	}

}
