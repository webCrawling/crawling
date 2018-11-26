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
		
		// ������ �غ�
		sql = "insert into ordermenu ( id,menu,price,phone )values(?,?,?,?)";
		
		
		try {
			
			// ���ؼ� ��ü �غ�
			conn = datasource.getConnection();
			
			// �����ͺ��̽����� ���Ǹ� ���� PreparedStatement��ü �غ�
			pstmt = conn.prepareStatement(sql);
			 
			// insert�� ������ ����
			pstmt.setString(1, dto.getId());
			pstmt.setString(2, dto.getMenu());
			pstmt.setInt(3, dto.getPrice());
			pstmt.setString(4, dto.getPhone());
			
			
			// ������ ����
			pstmt.executeQuery();
			
			//�޸� ����
			pstmt.close();
			
		} catch (SQLException e) {
			System.out.println("order() : ���� ����");
			e.printStackTrace();
		}
		
		
		
		
		
	}
	
	
}
