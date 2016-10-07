<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JSP页面</title>
</head>
<body>
<h1>1. JSP 指令: page, include, taglib </h1>
<hr>
<h1>2. JSP 注释: HTML注释, JSP注释, JSP脚本注释 </h1>
<!-- 我是HTML注释，在客户端View Source可见 -->
<%-- 我是JSP注释，在客户端View Source不可见 --%>
<%	
	//我是JSP脚本注释。单行注释。在客户端View Source不可见
	/*
	*多行注释
	*/
%>
<hr>
<h1>3. JSP脚本：可以声明局部变量，调用函数，方法。<% //Java代码 %> </h1>
<% 
	String s = "局部变量";
	out.println("大家好，欢迎大家学习JAVAEE开发" + "   " + str + "   " + add(7,8) + "   " + s);
	list.add(1);
	list.add(2);
%>
<hr>
<h1>4. JSP声明：只能声明页面全局变量和函数<%! //Java声明代码 %> </h1>
<%!
	String str = "张三";
	int add(int x, int y){
		return x+y;	
	}
	ArrayList list = new ArrayList();	
%>
<% out.println(list.get(0) + "   " + s); %>
<hr>
<h1>5. JSP表达式：直接计算变量和函数的值<%//=表达式 %> </h1>
你好！ <%=str %><br>
3+4=<%=add(3,4) %><br>
<%=str + s + list.get(1) %>
<hr>
<h1>6. JSPtaglib</h1>
<c:if test="true">显示<% out.print(add(4,5)); %> </c:if>
<c:if test="false">不显示 </c:if>
</body>
</html>