<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8"%>
<%@ page import="com.atwjsw.jsp.entity.Items"%>
<%@ page import="com.atwjsw.jsp.dao.ItemsDAO"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'details.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
div {
	float: left;
	margin-left: 30px;
	margin-right: 30px;
	margin-top: 5px;
	margin-bottom: 5px;
}

div dd {
	margin: 0px;
	font-size: 10pt;
}

div dd.dd_name {
	color: blue;
}

div dd.dd_city {
	color: #000;
}
</style>
</head>

<body>
	<h1>商品详情</h1>
	<hr>
	<center>
		<table width="750" height="60" cellpadding="0" cellspacing="0"
			border="0">
			<tr>
				<!-- 商品详情 -->
				<%
					ItemsDAO itemDao = new ItemsDAO();
					Items item = itemDao.queryItemsById(request.getParameter("id"));
					if (item != null) {
				%>
				<td width="70%" valign="top">
					<table>
						<tr>
							<td rowspan="4"><img src="images/<%=item.getPicture()%>"
								width="200" height="160" /></td>
						</tr>
						<tr>
							<td><B><%=item.getName()%></B></td>
						</tr>
						<tr>
							<td>产地：<%=item.getCity()%></td>
						</tr>
						<tr>
							<td>价格：<%=item.getPrice()%>￥
							</td>
						</tr>
					</table>
				</td>
				<%
					}
				%>
				<%
					
					

					//取出Cookie中的String
					String viewlist = "";
					Cookie[] cookies = request.getCookies();
					if (cookies != null && cookies.length > 0) {
						for (Cookie cookie : cookies) {
							if (cookie.getName().equals("viewlist")) {
								viewlist = cookie.getValue();
								//System.out.println("取出现有cookie中的viewlist：" + viewlist);
							}
						}
					}
					
					//把本次的Id添加到String
					String currentId = String.valueOf(item.getId());
					if (viewlist.equals("")) {
						viewlist = currentId;
					} else {
						viewlist = viewlist+":" +currentId;
					}
					System.out.println("生成新的viewlist：" + viewlist);

					//展示前5个
					

					
					
					//把Cookie放到Response中					
					Cookie c = new Cookie("viewlist", viewlist);
					c.setMaxAge(864000);
					response.addCookie(c);
				%>
				 <!-- 浏览过的商品 -->
          <td width="30%" bgcolor="#EEE" align="center">
             <br>
             <b>您浏览过的商品</b><br>
             <!-- 循环开始 -->
             <% 
             	List<Items> itemlist = itemDao.getViewList(viewlist);
                if(itemlist!=null&&itemlist.size()>0 )
                {
                   System.out.println("itemlist.size="+itemlist.size());
                   for(Items i:itemlist)
                   {
                         
             %>
             <div>
             <dl>
               <dt>
                 <a href="details.jsp?id=<%=i.getId()%>"><img src="images/<%=i.getPicture() %>" width="120" height="90" border="1"/></a>
               </dt>
               <dd class="dd_name"><%=i.getName() %></dd> 
               <dd class="dd_city">产地:<%=i.getCity() %>&nbsp;&nbsp;价格:<%=i.getPrice() %> ￥ </dd> 
             </dl>
             </div>
             <% 
                   }
                }
             %>
             <!-- 循环结束 -->
				</td>
			</tr>
		</table>
	</center>
</body>
</html>
