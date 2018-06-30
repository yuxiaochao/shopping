package com.shop.mapper;
import java.util.List;

import com.base.common.BaseMapper;
import com.shop.entity.CartEntity;

public interface CartMapper  extends BaseMapper<CartEntity>{

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