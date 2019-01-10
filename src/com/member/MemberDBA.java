package com.member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;



public class MemberDBA {
	private static MemberDBA instance = new MemberDBA();

	public static MemberDBA getInstance() {
		return instance;
	}

	//dbConnection톰캣이용
	private Connection getConnection() throws Exception{
		Context initContext = new InitialContext();
		Context envContext = (Context)initContext.lookup("java:/comp/env");
		DataSource ds = (DataSource)envContext.lookup("jdbc/jsp");
		return ds.getConnection();
	}
	public Member login(String userId,String pwd) {//로그인
		Member mb = null;
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		String sql = "Select * from myMemberDB where userid = '"+userId+"'";
		try {
			conn  = getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);

			while(rs.next()) {
				mb = new Member();
				if(pwd.equals(rs.getString("pwd"))) {//비밀번호도 맞으면
					mb.setUserId(rs.getString("userId"));
					mb.setPwd(rs.getString("pwd"));
					mb.setName(rs.getString("name"));
					mb.setZipCode(rs.getString("zipCode"));
					mb.setAddr(rs.getString("addr"));
					mb.setPhone(rs.getString("phone"));
					mb.setGender(rs.getString("gender"));
					mb.setEmail(rs.getString("email"));
					mb.setPersonalNum(rs.getString("personalNum"));
					mb.setAge(rs.getInt("age"));
					mb.setAdmin(rs.getInt("admin"));
				}
			}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			disConnection(conn, stmt, null, rs);
		}
		return mb;
	}
	public void join(Member mb) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		String sql = "INSERT INTO MYMEMBERDB(userId,pwd,name,zipcode,addr,phone,gender,email,personalnum,age,admin)"
				+ " values(?,?,?,?,?,?,?,?,?,?,?)";
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mb.getUserId());
			pstmt.setString(2, mb.getPwd());
			pstmt.setString(3, mb.getName());
			pstmt.setString(4, mb.getZipCode());
			pstmt.setString(5, mb.getAddr());
			pstmt.setString(6, mb.getPhone());
			pstmt.setString(7, mb.getGender());
			pstmt.setString(8, mb.getEmail());
			pstmt.setString(9, mb.getPersonalNum());
			pstmt.setInt(10, mb.getAge());
			pstmt.setInt(11, mb.getAdmin());
			
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	private void disConnection(Connection conn,Statement stmt,PreparedStatement pstmt,ResultSet rs) {
		try {
			if(conn != null)conn.close();
			if(stmt != null)stmt.close();
			if(pstmt!=null)pstmt.close();
			if(rs!=null)rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
}