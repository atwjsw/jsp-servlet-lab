<%@ page language="java" import="java.util.*,java.text.*" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>JSP session对象测试</title>
</head>
<body>
<h1>JSP session对象测试</h1>

<%  
	Date date = new Date(session.getCreationTime()); 
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日  HH:mm:ss");
	String strDate = sdf.format(date);
	String[] attrs = session.getValueNames();
	for (String attr: attrs) {
		out.print(attr + "&nbsp;&nbsp;&nbsp;" + session.getAttribute(attr) + "<br>");		
	}
	
	//设置导致session失效的两次请求间隔最大值（单位秒）
	session.setMaxInactiveInterval(10);
	
%>
Session创建时间(毫秒)：<%=session.getCreationTime() %>
<br>
Session创建时间：<%=strDate %>
<br>
Session ID：<%=session.getId() %>
<br>
Username：<%=session.getAttribute("username") %>
<br>
</body>
</html>