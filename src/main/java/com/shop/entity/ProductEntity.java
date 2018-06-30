package com.shop.entity;

import java.io.Serializable;
import com.base.common.BaseEntity;
import java.util.Date;
public class ProductEntity implements BaseEntity,Serializable{

	private static final long serialVersionUID = 806695979020321536L;
	
	/**
	 * 主键
	 */
	private String prod001;

	/**
	 * 商品名
	 */
	private String prod002;

	/**
	 * 现价
	 */
	private String prod003;

	/**
	 * 原价
	 */
	private String prod004;

	/**
	 * 商品图片ID
	 */
	private String prod005;

	/**
	 * 商品介绍
	 */
	private String prod006;

	/**
	 * 上架时间
	 */
	private Date prod007;

	/**
	 * 最后修改时间
	 */
	private Date prod008;

	/**
	 * 备注
	 */
	private String prod009;

	/**
	 * 商品分类ID
	 */
	private String prod010;

	/**
	 * 库存
	 */
	private Integer prod011;

	/**
	 * 状态（0上架 1下架）
	 */
	private Integer prod012;

	/**
	 * 商品分类名称
	 */
	private String cate002;
	
	/**
	 * 是否上架
	 */
	private String status;

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	/**
	 * 获取商品分类名称
	 */
	public String getCate002() {
		return cate002;
	}

	/**
	 * 设置商品分类名称
	 */
	public void setCate002(String cate002) {
		this.cate002 = cate002;
	}

	/**
	 * 设置 主键 的值
	 */
	public void setProd001(String prod001){
		this.prod001 = prod001;
	}

	/**
	 * 获取 主键 的值
	 */
	public String getProd001(){
		return prod001;
	}
	/**
	 * 设置 商品名 的值
	 */
	public void setProd002(String prod002){
		this.prod002 = prod002;
	}

	/**
	 * 获取 商品名 的值
	 */
	public String getProd002(){
		return prod002;
	}
	/**
	 * 设置 现价 的值
	 */
	public void setProd003(String prod003){
		this.prod003 = prod003;
	}

	/**
	 * 获取 现价 的值
	 */
	public String getProd003(){
		return prod003;
	}
	/**
	 * 设置 原价 的值
	 */
	public void setProd004(String prod004){
		this.prod004 = prod004;
	}

	/**
	 * 获取 原价 的值
	 */
	public String getProd004(){
		return prod004;
	}
	/**
	 * 设置 商品图片ID 的值
	 */
	public void setProd005(String prod005){
		this.prod005 = prod005;
	}

	/**
	 * 获取 商品图片ID 的值
	 */
	public String getProd005(){
		return prod005;
	}
	/**
	 * 设置 商品介绍 的值
	 */
	public void setProd006(String prod006){
		this.prod006 = prod006;
	}

	/**
	 * 获取 商品介绍 的值
	 */
	public String getProd006(){
		return prod006;
	}
	/**
	 * 设置 上架时间 的值
	 */
	public void setProd007(Date prod007){
		this.prod007 = prod007;
	}

	/**
	 * 获取 上架时间 的值
	 */
	public Date getProd007(){
		return prod007;
	}
	/**
	 * 设置 最后修改时间 的值
	 */
	public void setProd008(Date prod008){
		this.prod008 = prod008;
	}

	/**
	 * 获取 最后修改时间 的值
	 */
	public Date getProd008(){
		return prod008;
	}
	/**
	 * 设置 备注 的值
	 */
	public void setProd009(String prod009){
		this.prod009 = prod009;
	}

	/**
	 * 获取 备注 的值
	 */
	public String getProd009(){
		return prod009;
	}
	/**
	 * 设置 商品分类ID 的值
	 */
	public void setProd010(String prod010){
		this.prod010 = prod010;
	}

	/**
	 * 获取 商品分类ID 的值
	 */
	public String getProd010(){
		return prod010;
	}
	/**
	 * 设置 库存 的值
	 */
	public void setProd011(Integer prod011){
		this.prod011 = prod011;
	}

	/**
	 * 获取 库存 的值
	 */
	public Integer getProd011(){
		return prod011;
	}
	/**
	 * 设置 状态（0上架 1下架） 的值
	 */
	public void setProd012(Integer prod012){
		this.prod012 = prod012;
	}

	/**
	 * 获取 状态（0上架 1下架） 的值
	 */
	public Integer getProd012(){
		return prod012;
	}
	
}