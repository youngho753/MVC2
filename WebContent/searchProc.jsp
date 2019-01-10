 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--<%@page import = "com.member.*"%>
<%@page import = "org.json.simple.JSONArray" %>
<%@page import = "java.util.*" %>
<%
	request.setCharacterEncoding("utf-8");
	String key = request.getParameter("key");
	String word = request.getParameter("word");
	MemberDAO dao = MemberDAO.getInstance();
	//ArrayList<Member> arr = dao.searchMember(key,word);
	JSONArray jarr = new JSONArray();
	for(Member m :arr){
		JSONObject obj = new JSONObject();
		obj.put("userid",m.getUserid());
		obj.put("name",m.getName());
		jarr.add(obj);
	}
	out.println(jarr.toString());
%>

 --%>