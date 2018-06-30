package com.shop.entity;

import java.io.Serializable;
import com.base.common.BaseEntity;
import java.util.Date;
public class CartEntity implements BaseEntity,Serializable{

	private static final long serialVersionUID = 958146282027660032L;
	
	/**
	 * 主键
	 */
	private String cart001;

	/**
	 * 用户ID
	 */
	private String cart002;

	/**
	 * 商品ID
	 */
	private String cart003;

	/**
	 * 数量
	 */
	private Integer cart004;

	/**
	 * 添加购物车时间
	 */
	private Date cart005;
	/**
	 * 商品名
	 */
	private String prod002;
	/**
	 * 现价
	 */
	private Integer prod003;
	
	private String prod005;
	public String getProd005() {
		return prod005;
	}

	public void setProd005(String prod005) {
		this.prod005 = prod005;
	}

	/**
	 * 总价
	 */
	private String total;
	/**
	 * 购物车商品种类
	 */
	private String species;
 

	
	public String getSpecies() {
		return species;
	}

	public void setSpecies(String species) {
		this.species = species;
	}

	public String getProd002() {
		return prod002;
	}

	public void setProd002(String prod002) {
		this.prod002 = prod002;
	}

	public Integer getProd003() {
		return prod003;
	}

	public void setProd003(Integer prod003) {
		this.prod003 = prod003;
	}

	public String getTotal() {
		return total;
	}

	public void setTotal(String total) {
		this.total = total;
	}

	/**
	 * 设置 主键 的值
	 */
	public void setCart001(String cart001){
		this.cart001 = cart001;
	}

	/**
	 * 获取 主键 的值
	 */
	public String getCart001(){
		return cart001;
	}
	/**
	 * 设置 用户ID 的值
	 */
	public void setCart002(String cart002){
		this.cart002 = cart002;
	}

	/**
	 * 获取 用户ID 的值
	 */
	public String getCart002(){
		return cart002;
	}
	/**
	 * 设置 商品ID 的值
	 */
	public void setCart003(String cart003){
		this.cart003 = cart003;
	}

	/**
	 * 获取 商品ID 的值
	 */
	public String getCart003(){
		return cart003;
	}
	/**
	 * 设置 数量 的值
	 */
	public void setCart004(Integer cart004){
		this.cart004 = cart004;
	}

	/**
	 * 获取 数量 的值
	 */
	public Integer getCart004(){
		return cart004;
	}
	/**
	 * 设置 添加购物车时间 的值
	 */
	public void setCart005(Date cart005){
		this.cart005 = cart005;
	}

	/**
	 * 获取 添加购物车时间 的值
	 */
	public Date getCart005(){
		return cart005;
	}
	
}