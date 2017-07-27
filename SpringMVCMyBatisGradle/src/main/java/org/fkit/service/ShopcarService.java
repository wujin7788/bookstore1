package org.fkit.service;

import java.util.List;

import org.fkit.domain.Shopcar;

public interface ShopcarService {
	//添加到购物车
	void insertShopcar(Shopcar shopcar);
	
	//删除购物车
	void deleteShopcar(int id);
	
	List<Shopcar> selectAll();
	
	void updateShopcar(int count, int id);
	
	Shopcar selectShopcarById(int id);
	
}
