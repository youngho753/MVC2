package com.zipcode;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;


public class ZipCodeDBA {
	private static ZipCodeDBA instance = new ZipCodeDBA();

	public static ZipCodeDBA getInstance() {
		return instance;
	}

	//dbConnection톰캣이용
	private Connection getConnection() throws Exception{
		Context initContext = new InitialContext();
		Context envContext = (Context)initContext.lookup("java:/comp/env");
		DataSource ds = (DataSource)envContext.lookup("jdbc/jsp");
		return ds.getConnection();
	}
	public ArrayList<ZipCode> zipSearch(String dong) {
		ArrayList<ZipCode> arr = new ArrayList<>();
		Connection conn = null;
		Statement st = null;
		ResultSet rs = null;
		try {
			conn = getConnection();
			st = conn.createStatement();
			String sql = "SELECT * FROM ZipCode WHERE dong LIKE '%"+dong+"%'";
			
			
			rs = st.executeQuery(sql);
			while(rs.next()) {
				ZipCode zip = new ZipCode();
				zip.setBunji(rs.getString("bunji"));
				zip.setDong(rs.getString("dong"));
				zip.setGugun(rs.getString("gugun"));
				zip.setSeq(Integer.parseInt(rs.getString("seq")));
				zip.setSido(rs.getString("sido"));
				zip.setZipcode(rs.getString("zipcode"));
				arr.add(zip);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return arr; 
	}
}
