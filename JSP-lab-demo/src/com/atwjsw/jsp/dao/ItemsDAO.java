package com.atwjsw.jsp.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import com.atwjsw.jsp.entity.Items;
import com.atwjsw.jsp.util.DBHelper;

public class ItemsDAO {

	public List<Items> queryItems() {

		Connection conn = null;
		PreparedStatement pstat = null;
		ResultSet rs = null;
		List<Items> items = new ArrayList<Items>();

		try {
			conn = DBHelper.getConnection();
			String sql = "SELECT * FROM items";
			pstat = conn.prepareStatement(sql);
			rs = pstat.executeQuery();
			while (rs.next()) {
				Items item = new Items();
				item.setId(rs.getInt("id"));
				item.setName(rs.getString("name"));
				item.setCity(rs.getString("city"));
				item.setNumber(rs.getInt("number"));
				item.setPrice(rs.getInt("price"));
				item.setPicture(rs.getString("picture"));
				items.add(item);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (pstat != null) {
				try {
					pstat.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return items;
	};

	public Items queryItemsById(String id) {

		Connection conn = null;
		PreparedStatement pstat = null;
		ResultSet rs = null;
		Items item = new Items();
		try {
			conn = DBHelper.getConnection();
			String sql = "SELECT * FROM items where id = ?";
			pstat = conn.prepareStatement(sql);
			pstat.setInt(1, Integer.valueOf(id));
			rs = pstat.executeQuery();
			if (rs.next()) {
				item.setId(rs.getInt("id"));
				item.setName(rs.getString("name"));
				item.setCity(rs.getString("city"));
				item.setNumber(rs.getInt("number"));
				item.setPrice(rs.getInt("price"));
				item.setPicture(rs.getString("picture"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (pstat != null) {
				try {
					pstat.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return item;
	};

	public List<Items> getViewList(String list) {
		System.out.println("list:" + list);
		ArrayList<Items> itemlist = new ArrayList<Items>();
		int iCount = 5; // Ã¿´Î·µ»ØÇ°ÎåÌõ¼ÇÂ¼
		if (list != null && list.length() > 0) {
			String[] arr = list.split(":");
			System.out.println("arr.length=" + arr.length);
			// Èç¹ûÉÌÆ·¼ÇÂ¼´óÓÚµÈÓÚ5Ìõ
			if (arr.length >= 5) {
				for (int i = arr.length - 1; i >= arr.length - iCount; i--) {				
					itemlist.add(queryItemsById(arr[i]));
				}
			} else {
				for (int i = arr.length - 1; i >= 0; i--) {
					itemlist.add(queryItemsById(arr[i]));
				}
			}
			return itemlist;
		} else {
			return null;
		}

	}

	public static void main(String[] args) {

		ItemsDAO itemsDAO = new ItemsDAO();
		/*
		 * List<Items> items = itemsDAO.queryItems(); for (Items item: items) {
		 * System.out.println(item); }
		 */

		/*
		 * Items item1 = itemsDAO.queryItemsById("1");
		 * System.out.println(item1); Items item2 =
		 * itemsDAO.queryItemsById("1"); System.out.println(item2);
		 */

	}
}
