package com.shop.entity;

import java.io.Serializable;
import com.base.common.BaseEntity;
import java.util.Date;
public class BackUserEntity implements BaseEntity,Serializable{

	private static final long serialVersionUID = 839879031406091264L;
	
	/**
	 * 主键
	 */
	private String baus001;

	/**
	 * 用户名
	 */
	private String baus002;

	/**
	 * 密码
	 */
	private String baus003;

	/**
	 * 创建时间
	 */
	private Date baus004;


	/**
	 * 设置 主键 的值
	 */
	public void setBaus001(String baus001){
		this.baus001 = baus001;
	}

	/**
	 * 获取 主键 的值
	 */
	public String getBaus001(){
		return baus001;
	}
	/**
	 * 设置 用户名 的值
	 */
	public void setBaus002(String baus002){
		this.baus002 = baus002;
	}

	/**
	 * 获取 用户名 的值
	 */
	public String getBaus002(){
		return baus002;
	}
	/**
	 * 设置 密码 的值
	 */
	public void setBaus003(String baus003){
		this.baus003 = baus003;
	}

	/**
	 * 获取 密码 的值
	 */
	public String getBaus003(){
		return baus003;
	}
	/**
	 * 设置 创建时间 的值
	 */
	public void setBaus004(Date baus004){
		this.baus004 = baus004;
	}

	/**
	 * 获取 创建时间 的值
	 */
	public Date getBaus004(){
		return baus004;
	}
	
}