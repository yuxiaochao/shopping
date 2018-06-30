package com.shop.entity;

import java.io.Serializable;
import java.util.Date;

import com.base.common.BaseEntity;

public class UserEntity implements BaseEntity,Serializable{

	private static final long serialVersionUID = 328552621635104896L;
	
	/**
	 * 主键
	 */
	private String user001;

	/**
	 * 用户名
	 */
	private String user002;

	/**
	 * 密码
	 */
	private String user003;

	/**
	 * 手机号
	 */
	private String user004;

	/**
	 * 备注
	 */
	private String user005;

	/**
	 * 创建人id
	 */
	private String user006;

	/**
	 * 创建时间
	 */
	private Date user007;

	/**
	 * 最后修改时间
	 */
	private Date user008;


	/**
	 * 设置 主键 的值
	 */
	public void setUser001(String user001){
		this.user001 = user001;
	}

	/**
	 * 获取 主键 的值
	 */
	public String getUser001(){
		return user001;
	}
	/**
	 * 设置 用户名 的值
	 */
	public void setUser002(String user002){
		this.user002 = user002;
	}

	/**
	 * 获取 用户名 的值
	 */
	public String getUser002(){
		return user002;
	}
	/**
	 * 设置 密码 的值
	 */
	public void setUser003(String user003){
		this.user003 = user003;
	}

	/**
	 * 获取 密码 的值
	 */
	public String getUser003(){
		return user003;
	}
	/**
	 * 设置 手机号 的值
	 */
	public void setUser004(String user004){
		this.user004 = user004;
	}

	/**
	 * 获取 手机号 的值
	 */
	public String getUser004(){
		return user004;
	}
	/**
	 * 设置 备注 的值
	 */
	public void setUser005(String user005){
		this.user005 = user005;
	}

	/**
	 * 获取 备注 的值
	 */
	public String getUser005(){
		return user005;
	}
	/**
	 * 设置 创建人id 的值
	 */
	public void setUser006(String user006){
		this.user006 = user006;
	}

	/**
	 * 获取 创建人id 的值
	 */
	public String getUser006(){
		return user006;
	}
	/**
	 * 设置 创建时间 的值
	 */
	public void setUser007(Date date){
		this.user007 = date;
	}

	/**
	 * 获取 创建时间 的值
	 */
	public Date getUser007(){
		return user007;
	}
	/**
	 * 设置 最后修改时间 的值
	 */
	public void setUser008(Date date){
		this.user008 = date;
	}

	/**
	 * 获取 最后修改时间 的值
	 */
	public Date getUser008(){
		return user008;
	}
	
}