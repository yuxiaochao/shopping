package com.shop.service;

import com.base.common.BaseService;

import java.util.List;

import org.springframework.stereotype.Component;
import com.shop.entity.CartEntity;

@Component
public interface CartService extends BaseService<CartEntity> {
	/**
	 * 查询购物车信息
	 * @param entity
	 * @return
	 */
	public List<CartEntity> findCartInfo(CartEntity entity);
	/**
	 * 统计用户购物车商品总价
	 * @param entity
	 * @return
	 */
	public CartEntity findCartTotal(CartEntity entity);
	/**
	 * 统计购物车内商品种类
	 * @param cart002
	 * @return
	 */
	public CartEntity findSpecies(String cart002);
}