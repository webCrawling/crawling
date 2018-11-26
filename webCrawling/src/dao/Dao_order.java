package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import dto.Dto_order;

public class Dao_order {

	//field
	Context context;
	private DataSource datasource;
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	private String sql;
	
	
	//constructor
	public Dao_order() throws NamingException {
		
		context = new InitialContext();
		datasource = (DataSource) context.lookup("java:comp/env/jdbc/OracleDB");
		
	}
	
	public void doOrder(Dto_order dto) {
		
		// 쿼리문 준비
		sql = "insert into ordermenu ( id,menu,price,quan )values(?,?,?,?)";
		
		
		try {
			
			// 컨넥션 객체 준비
			conn = datasource.getConnection();
			
			// 데이터베이스와의 질의를 위한 PreparedStatement객체 준비
			pstmt = conn.prepareStatement(sql);
			 
			// insert할 데이터 설정
			pstmt.setString(1, dto.getId());
			pstmt.setString(2, dto.getMenu());
			pstmt.setInt(3, dto.getPrice());
			pstmt.setInt(4, dto.getQuan());
			
			
			// 쿼리문 실행
			pstmt.executeQuery();
			
			//메모리 해제
			pstmt.close();
			
		} catch (SQLException e) {
			System.out.println("order() : 연결 실패");
			e.printStackTrace();
		}
		
		
		
		
		
	}
	
	
}
