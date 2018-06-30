package com.${project}.entity;

import java.io.Serializable;
import com.base.common.BaseEntity;
<#list fields as field>
<#if field.PROPERTY_TYPE=='Date'>
import java.util.Date;<#break>

</#if>
</#list>

public class ${entity} implements BaseEntity,Serializable{

	private static final long serialVersionUID = ${serialVersionUID}L;
	
	<#list fields as field>
	<#if field.COMMENTS?default("")!="">
	/**
	 * ${field.COMMENTS?trim}
	 */
	</#if>
	<#if field_index==0>
	<#else>
	</#if>
	private ${field.PROPERTY_TYPE} ${field.COLUMN_NAME?lower_case};

	</#list>

	<#list fields as field>
	<#if field.COMMENTS?default("")!="">
	/**
	 * 设置 ${field.COMMENTS?trim} 的值
	 */
	</#if>
	public void set${field.COLUMN_NAME?capitalize}(${field.PROPERTY_TYPE} ${field.COLUMN_NAME?lower_case}){
		this.${field.COLUMN_NAME?lower_case} = ${field.COLUMN_NAME?lower_case};
	}

	<#if field.COMMENTS?default("")!="">
	/**
	 * 获取 ${field.COMMENTS?trim} 的值
	 */
	</#if>
	public ${field.PROPERTY_TYPE} get${field.COLUMN_NAME?capitalize}(){
		return ${field.COLUMN_NAME?lower_case};
	}
	</#list>
	
}