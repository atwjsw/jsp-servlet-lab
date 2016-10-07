package com.atwjsw.jsp.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBHelper {

	private static final String driver = "com.mysql.jdbc.Driver";
	private static final String url = "jdbc:mysql://localhost:3306/shopping?useUnicode=true&characterEncoding=utf8";
	private static final String username = "atwjsw";
	private static final String password = "123456";
	private static Connection conn;

	// 静态代码负责加载驱动
	static {
		try {
			Class.forName(driver);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static Connection getConnection() throws SQLException {

		if (conn == null) {
			conn = DriverManager.getConnection(url, username, password);
		}
		return conn;

	}

	public static void main(String[] args) {
		
		try {
			Connection conn = DBHelper.getConnection();
			if (conn!=null) {
				System.out.println("连接数据库成功");
			} else {
				System.out.println("连接数据库失败");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		

	}
}