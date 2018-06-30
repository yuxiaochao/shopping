package com.shop.entity;

import java.io.Serializable;
import com.base.common.BaseEntity;
import java.util.Date;
public class RegistCodeEntity implements BaseEntity,Serializable{

	private static final long serialVersionUID = 807673778599385600L;
	
	/**
	 * 主键
	 */
	private String reco001;

	/**
	 * 注册码
	 */
	private String reco002;

	/**
	 * 生成注册码的用户
	 */
	private String reco003;

	/**
	 * 使用时效
	 */
	private Date reco004;

	/**
	 * 生成日期
	 */
	private Date reco005;

/**
 * 用户名
 */
	private String baus002;
	
	/**
	 * 表示可用不可用
	 */
	private String expired;
	
	public String getExpired() {
		return expired;
	}

	public void setExpired(String expired) {
		this.expired = expired;
	}

	public String getBaus002() {
		return baus002;
	}

	public void setBaus002(String baus002) {
		this.baus002 = baus002;
	}

	/**
	 * 设置 主键 的值
	 */
	public void setReco001(String reco001){
		this.reco001 = reco001;
	}

	/**
	 * 获取 主键 的值
	 */
	public String getReco001(){
		return reco001;
	}
	/**
	 * 设置 注册码 的值
	 */
	public void setReco002(String reco002){
		this.reco002 = reco002;
	}

	/**
	 * 获取 注册码 的值
	 */
	public String getReco002(){
		return reco002;
	}
	/**
	 * 设置 生成注册码的用户 的值
	 */
	public void setReco003(String reco003){
		this.reco003 = reco003;
	}

	/**
	 * 获取 生成注册码的用户 的值
	 */
	public String getReco003(){
		return reco003;
	}
	/**
	 * 设置 使用时效 的值
	 */
	public void setReco004(Date reco004){
		this.reco004 = reco004;
	}

	/**
	 * 获取 使用时效 的值
	 */
	public Date getReco004(){
		return reco004;
	}
	/**
	 * 设置 生成日期 的值
	 */
	public void setReco005(Date reco005){
		this.reco005 = reco005;
	}

	/**
	 * 获取 生成日期 的值
	 */
	public Date getReco005(){
		return reco005;
	}
	
}