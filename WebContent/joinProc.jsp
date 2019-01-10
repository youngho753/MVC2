<%@page import="sun.misc.CharacterEncoder"%>
<%@page import="org.apache.catalina.filters.SetCharacterEncodingFilter"%>
<%@page import="com.member.model.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String userId = request.getParameter("userId");
	String pwd = request.getParameter("pwd");
	String gender = request.getParameter("gender");
	String email = request.getParameter("email");
	String zipCode = request.getParameter("zipCode");
	String addr = request.getParameter("addr");
	
	Member mb = new Member();
	mb.setUserId(userId);
	mb.setPwd(pwd);
	mb.setGender(gender);asdasd
	mb.setEmail(email);
	mb.setZipCode(zipCode);
	mb.setAddr(addr);
	mb.setAdmin(0);
	
	MemberDBA dao = MemberDBA.getInstance();
	dao.join(mb);	
	session.setAttribute("loginMB",mb);
	
	response.sendRedirect("main.jsp");
	
	
%>