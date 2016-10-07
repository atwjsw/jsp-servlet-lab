package com.atwjsw.servlet;

import java.io.IOException;
import java.util.Set;
import java.util.Map.Entry;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.atwjsw.jsp.dao.ItemsDAO;
import com.atwjsw.jsp.entity.Cart;
import com.atwjsw.jsp.entity.Items;

public class CartServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		if (req.getParameter("action").equals("add")) {
			//购物车添加商品（页面传入商品ID和数量，从数据库取出商品信息，放入购物车）
			ItemsDAO itemsDAO = new ItemsDAO();
			Items item = itemsDAO.queryItemsById(req.getParameter("id"));
			
			if (req.getSession().getAttribute("cart")==null){
				Cart c = new Cart();				
				req.getSession().setAttribute("cart", c);
			}			
			Cart c = (Cart)req.getSession().getAttribute("cart");
			c.addGoods(item, Integer.valueOf(req.getParameter("num")));	
			//req.getSession().setAttribute("cart", c);
			req.getRequestDispatcher("../success.jsp").forward(req, resp);
			
		} 
		
		if (req.getParameter("action").equals("show")) {
			//显示购物车内容（遍历购物车，显示列表）
			System.out.println("显示购物车内容");
			Cart c = (Cart)req.getSession().getAttribute("cart");
			Set<Entry<Items, Integer>> entries = c.getGoods().entrySet();
			for (Entry<Items, Integer> entry : entries) {
				System.out.println("商品：" + entry.getKey() + "   数量： " + entry.getValue());
			}
			req.getRequestDispatcher("../cart.jsp").forward(req, resp);
			
		}
				
		if (req.getParameter("action").equals("delete")) {
			//购物车添加商品（页面传入商品ID和数量，从数据库取出商品信息，放入购物车）
			ItemsDAO itemsDAO = new ItemsDAO();
			Items item = itemsDAO.queryItemsById(req.getParameter("id"));
			
			Cart c = (Cart)req.getSession().getAttribute("cart");
			c.removeGoods(item);	
			req.getRequestDispatcher("../cart.jsp").forward(req, resp);
			
		} 
		
		
		
		
		
		
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
	
	

}
