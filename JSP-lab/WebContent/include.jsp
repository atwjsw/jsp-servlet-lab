<%@ page language="java" import="java.text.*, java.util.*" contentType="text/html; charset=utf-8"%>
<% 
	Date date = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日");
	out.println(sdf.format(date));
%>
