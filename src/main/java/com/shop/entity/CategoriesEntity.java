package com.shop.entity;

import java.io.Serializable;
import com.base.common.BaseEntity;

public class CategoriesEntity implements BaseEntity,Serializable{

	private static final long serialVersionUID = 583052271389626496L;
	
	/**
	 * 分类ID
	 */
	private String cate001;

	/**
	 * 分类名称
	 */
	private String cate002;

	/**
	 * 层级（0基本层级，1子层级）
	 */
	private String cate003;

	/**
	 * 上级ID（CATE003为1时）
	 */
	private String cate004;


	/**
	 * 设置 分类ID 的值
	 */
	public void setCate001(String cate001){
		this.cate001 = cate001;
	}

	/**
	 * 获取 分类ID 的值
	 */
	public String getCate001(){
		return cate001;
	}
	/**
	 * 设置 分类名称 的值
	 */
	public void setCate002(String cate002){
		this.cate002 = cate002;
	}

	/**
	 * 获取 分类名称 的值
	 */
	public String getCate002(){
		return cate002;
	}
	/**
	 * 设置 层级（0基本层级，1子层级） 的值
	 */
	public void setCate003(String cate003){
		this.cate003 = cate003;
	}

	/**
	 * 获取 层级（0基本层级，1子层级） 的值
	 */
	public String getCate003(){
		return cate003;
	}
	/**
	 * 设置 上级ID（CATE003为1时） 的值
	 */
	public void setCate004(String cate004){
		this.cate004 = cate004;
	}

	/**
	 * 获取 上级ID（CATE003为1时） 的值
	 */
	public String getCate004(){
		return cate004;
	}
	
}