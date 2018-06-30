package com.shop.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import com.base.common.BaseServiceImpl;
import com.shop.entity.CartEntity;
import com.shop.mapper.CartMapper;
import com.shop.service.CartService;

@Component
public class CartServiceImpl extends BaseServiceImpl<CartEntity> implements CartService {

	@Autowired
	private CartMapper cartMapper; 
	
	@Override
	public List<CartEntity> findCartInfo(CartEntity entity) {
		return cartMapper.findCartInfo(entity);
	}

	@Override
	public CartEntity findCartTotal(CartEntity entity) {
		return cartMapper.findCartTotal(entity);
	}

	@Override
	public CartEntity findSpecies(String cart002) {
		return cartMapper.findSpecies(cart002);
	}

}