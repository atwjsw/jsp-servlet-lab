<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>用户注册</title>
 <script type="text/javascript" src="js/Calendar3.js"></script>
</head>
<body>
<h1>用户注册</h1>
<hr>
<form action="<%=basePath%>registration" method="post">
<table>
<tr>
<td><label for="username">用户名：</label></td>
<td><input type="text" id="username" name="username"/></td>
</tr>
<tr>
<td><label for="password">密码：</label></td>
<td><input type="password" id="password" name="password"/></td>
</tr>
<tr>
<td><label for="confimPassword">确认密码：</label></td>
<td><input type="password" id="confimPassword" name="confimPassword"/></td>
</tr>
<tr>
<td><label for="email">邮箱：</label></td>
<td><input type="text" id="email" name="email"/></td>
</tr>
<tr>
<td><label for="gender">性别：</label></td>
<td><input type="radio" id="gender" name="gender" value="male"/>男&nbsp;<input type="radio" name="gender" value="female"/>女</td>
</tr>
<tr>
<td><label for="control_date">出生日期：</label></td>
<td><input type="text" name="birthday" id="control_date" size="10"
    maxlength="10" onclick="new Calendar().show(this);" readonly="readonly" /></td>
</tr>
<tr>
<td><label for="favorites">爱好：</label></td>
<td>
<input type="checkbox" id="favorites" name="favorites" value="nba"/>NBA&nbsp;&nbsp;
<input type="checkbox" name="favorites" value="music"/>音乐&nbsp;&nbsp;
<input type="checkbox" name="favorites" value="movie"/>电影&nbsp;&nbsp;
<input type="checkbox" name="favorites" value="internet"/>上网&nbsp;&nbsp;
</td>
</tr>
<tr>
<td><label for="introduction">自我介绍：</label></td>
<td><textarea id="introduction" name="introduction" cols="25" rows="5"></textarea></td>
</tr>
<tr>
<td><label for="agreement">接受协议：</label></td>
<td><input type="checkbox" id="agreement" name="agreement" value="agreed"/>&nbsp;是否接受霸王条款</td>
</tr>
<tr>
<td><button type="submit">注册</button></td>
<td><button type="reset">取消</button></td>
</tr>
</table>
</form>
</body>
</html>