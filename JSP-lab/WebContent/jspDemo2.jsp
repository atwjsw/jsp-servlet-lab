<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>九九乘法表</title>
</head>
<body>
	<h1>九九乘法表</h1>
	<%!
		//通过JSP声明方法和JSP表达式调用的方式
		String printMutiplierTable1() {
			String s = "";
			for (int i=1; i<=9; i++) {
				for (int j=1; j<=i; j++) {
					s += j+"*"+i+"="+i*j+"&nbsp;&nbsp;&nbsp;";
				}
				s += "<br>";
			}			
			return s;
		}
	
		//通过JSP声明方法和JSP脚本调用的方式
		void printMutiplierTable2(JspWriter out) throws Exception {
			for (int i=1; i<=9; i++) {
				for (int j=1; j<=i; j++) {
					out.println(i+"*"+j+"="+i*j+"&nbsp;&nbsp;&nbsp;");
				}
				out.println("<br>");
			}
		};
	%>
	<hr>
	<%-- 通过JSP声明方法和JSP表达式调用的方式  --%>
	<%=printMutiplierTable1()%>
	<hr>
	<%-- 通过JSP声明方法和JSP脚本调用的方式  --%>
	<% printMutiplierTable2(out); %>
</body>
</html>