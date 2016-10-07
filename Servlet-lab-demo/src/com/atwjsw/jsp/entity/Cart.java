package com.atwjsw.jsp.entity;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;

public class Cart {

	private double totalPrice;
	private HashMap<Items, Integer> goods;

	public Cart() {
		this.totalPrice = 0.0;
		this.goods = new HashMap<Items, Integer>();
	}

	public double getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(double totalPrice) {
		this.totalPrice = totalPrice;
	}

	public HashMap<Items, Integer> getGoods() {
		return goods;
	}

	public void setGoods(HashMap<Items, Integer> goods) {
		this.goods = goods;
	}

	public boolean addGoods(Items item, int number) {
		if (this.goods.containsKey(item)) {
			this.goods.put(item, this.goods.get(item) + number);
		} else {
			this.goods.put(item, number);
		}
		this.calculateTotalPrice(); // 重新计算购物车总金额
		return true;
	}

	public boolean removeGoods(Items item) {
		this.goods.remove(item);
		this.calculateTotalPrice(); // 重新计算购物车总金额
		return true;
	}

	public double calculateTotalPrice() {

		double sum = 0.0;
		Set<Items> keys = this.goods.keySet();
		Iterator<Items> it = keys.iterator();
		while (it.hasNext()) {
			Items item = it.next();
			sum += item.getPrice() * this.goods.get(item);
		}
		this.setTotalPrice(sum);
		return sum;
	}

	public static void main(String[] args) {

		Items item1 = new Items(1, "安踏运动鞋", "温州", 200, 500, "001.jpg");
		Items item2 = new Items(2, "李宁运动鞋", "广州", 300, 500, "002.jpg");
		Items item3 = new Items(1, "安踏运动鞋", "温州", 200, 500, "001.jpg");

		Cart c = new Cart();
		c.addGoods(item1, 1);
		c.addGoods(item2, 2);
		c.addGoods(item3, 2); // 再次购买"安踏运动鞋"，但未能合并，如何能合并添加的商品。

		Set<Entry<Items, Integer>> entries = c.goods.entrySet();
		for (Entry<Items, Integer> entry : entries) {
			System.out.println("商品：" + entry.getKey() + "   数量： " + entry.getValue());
		}

		System.out.println(c.getTotalPrice());

		/*
		 * c.removeGoods(item1); System.out.println(c.getTotalPrice());
		 */

	}

}
