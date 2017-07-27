package org.fkit.service.impl;

import java.util.List;

import org.fkit.domain.Shopcar;
import org.fkit.mapper.ShopcarMapper;
import org.fkit.service.ShopcarService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("shopcarService")
public class ShopcarServiceImpl implements ShopcarService {
	
	@Autowired
	private ShopcarMapper shopcarMapper;
	
	@Override
	public void insertShopcar(Shopcar shopcar) {
		shopcarMapper.insertShopcar(shopcar);
	}

	@Override
	public void deleteShopcar(int id) {
		shopcarMapper.deleteShopcar(id);
	}

	@Override
	public List<Shopcar> selectAll() {
		return shopcarMapper.selectAll();
	}

	@Override
	public void updateShopcar(int count, int id) {
		shopcarMapper.updateShopcar(count, id);
	}

	@Override
	public Shopcar selectShopcarById(int id) {
		return shopcarMapper.selectShopcarById(id);
	}
	
	
	
}
