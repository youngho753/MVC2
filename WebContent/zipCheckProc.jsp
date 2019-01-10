<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.zipcode.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
String dong = request.getParameter("dong");
//String dong = "서면";
ZipCodeDBA dba = ZipCodeDBA.getInstance(); //ZipSearch메소드가 있기때문에 객체 만들기
ArrayList<ZipCode> arr = dba.zipSearch(dong); // 리턴된 arr을 다시 arr에 넣어서 여기서 사용할 수 있게 만듦.
JSONArray jarr = new JSONArray();
for(ZipCode z : arr){
	JSONObject obj = new JSONObject();
	obj.put("zipcode", z.getZipcode());
	obj.put("sido", z.getSido());
	obj.put("gugun", z.getGugun());
	obj.put("dong", z.getDong());
	obj.put("bunji", z.getBunji());
	jarr.add(obj);
}
    out.println(jarr.toString()); //객체를 문자화해서 출력하기
    
%>