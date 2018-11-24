package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Iterator;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.sql.DataSource;

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

	// ȸ�� ����� ������
	public ArrayList<Dto_join> getMemberList() {

		// ȸ�� ����� ���� ��ü
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
			System.out.println("getMemberList() : ȸ����� �������� ����");
			e.printStackTrace();
		}

		return list_member;
	}

	// ȸ�� ������ ������
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
			System.out.println("getMemberInformation() : ȸ������ �������� ����");
			e.printStackTrace();
		}

		return dto;
	}

	// ȸ���� �ֹ� ������ ������
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
				dto.setPhone(rs.getString(4));
			}
			rs.close();

		} catch (Exception e) {
			System.out.println("getMemberOrderList() : ȸ���� �ֹ� ���� �������� ����");
			e.printStackTrace();
		}

		return dto;

	}

	// ȸ���� ��ü �ֹ� ������ ������
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
				dto.setPhone(rs.getString(4));

				list.add(dto);
			}
			rs.close();

		} catch (Exception e) {
			System.out.println("getWholeorder() : ȸ���� ��ü �ֹ� ���� �������� ����");
			e.printStackTrace();
		}

		return list;

	}

	// ��� ���� (������)
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
				dto.setPhone(rs.getString(4));

				list.add(dto);
			}
			rs.close();

		} catch (Exception e) {
			System.out.println("deliverAdmin() : ��ް��� (������) ����");
			e.printStackTrace();
		}

		return list;

	}

	// ȸ�� ����
	public void delete(String id) {
		sql = "delete from webcrawling where id=?";

		try {
			conn = datasource.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.executeUpdate();

			rs.close();
		} catch (Exception e) {
			System.out.println("delete() : ȸ�������� ���� �Ͽ����ϴ�.");
			e.printStackTrace();
		}

	}

}