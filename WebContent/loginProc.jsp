<%@page import="javax.websocket.Session"%>
<%@page import="com.member.model.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("utf-8");
String userId = request.getParameter("userId");
String pwd = request.getParameter("pwd");
MemberDBA dao = MemberDBA.getInstance();
Member mb = dao.login(userId,pwd);

if(mb != null){//아이디가 맞으면
	
	if(mb.getUserId() != null){//비밀번호가 맞으면
		
		if(mb.getAdmin()==1){ //로그인한 아이디가 관리자 계정이면
%>
			<script>
			alert("관리자 계정!!");
			</script>
			<%	
		}
		session.setAttribute("loginMB",mb);//loginMb에 Member mb 세션값을 넘겨줌
		response.sendRedirect("main.jsp");//main으로 보내줌
	}
		else{//아이디는 맞고 비밀번호가 틀리면
			%>
			<script>
			alert("비밀번호 오류!!");
			</script>
			<%
		}
	}else{//비회원일때
		%>
		<script>
		alert("아이디와 비밀번호 오류!!");
		</script>
		<%
}
response.sendRedirect("login.jsp");

%>
