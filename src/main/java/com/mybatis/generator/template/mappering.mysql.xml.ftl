<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE mapper PUBLIC "-//mybatis.org//DTD Mapper 3.0//EN" 
"http://mybatis.org/dtd/mybatis-3-mapper.dtd">

<mapper namespace="com.${project}.mapper.${mapper}">
     
	<resultMap type="com.${project}.entity.${entity}" id="${mapper}">
	<#list fields as field>
	<result column="${field.COLUMN_NAME?lower_case}" property="${field.COLUMN_NAME?lower_case}" />
	</#list>
	</resultMap>

	<select id="findById" resultType="com.${project}.entity.${entity}">
		 <![CDATA[ SELECT <#list fields as field>${field.COLUMN_NAME}<#if field_has_next>,</#if></#list> FROM ${tableName} WHERE ${fields[0].COLUMN_NAME} =${r'#'}{${fields[0].COLUMN_NAME?lower_case}} ]]> 
	</select>
		
	<select id="findByIdForList" resultMap="${mapper}" parameterType="java.util.List" flushCache="true">
		 <![CDATA[ SELECT <#list fields as field>${field.COLUMN_NAME}<#if field_has_next>,</#if></#list> FROM ${tableName} WHERE ${fields[0].COLUMN_NAME} IN  ]]> 
		<foreach collection="list" index="index" item="item" open="(" separator="," close=")">
			${r'#'}{item}
		</foreach>
	</select>
	
	<select id="findAll" resultMap="${mapper}">
		 <![CDATA[ SELECT <#list fields as field>${field.COLUMN_NAME}<#if field_has_next>,</#if></#list> FROM ${tableName} ]]> 
	</select>
	
	<select id="findByPage" resultMap="${mapper}">
		 <![CDATA[ SELECT <#list fields as field>${field.COLUMN_NAME}<#if field_has_next>,</#if></#list> FROM ${tableName} ]]> 
	</select>

	
	<select id="findByCriteria" resultMap="${mapper}" parameterType="com.${project}.entity.${entity}">
		 <![CDATA[ SELECT <#list fields as field>${field.COLUMN_NAME}<#if field_has_next>,</#if></#list> FROM ${tableName} ]]> 
		<where>
			<#list fields as field>
				<if test="${field.COLUMN_NAME?lower_case} != null">
				     <![CDATA[ AND ${field.COLUMN_NAME} = ${r'#'}{${field.COLUMN_NAME?lower_case}} ]]>
				</if>
			</#list>	
		</where>

	</select>
	
	<select id="countByCriteria" resultType="long" parameterType="com.${project}.entity.${entity}">
		 <![CDATA[  SELECT COUNT(1) FROM ${tableName} ]]> 
		<where>
			<#list fields as field>
				<if test="${field.COLUMN_NAME?lower_case} != null">
				     <![CDATA[ AND ${field.COLUMN_NAME} = ${r'#'}{${field.COLUMN_NAME?lower_case}} ]]>
				</if>
			</#list>
		</where>

	</select>
	
	<insert id="insert" parameterType="com.${project}.entity.${entity}" flushCache="true">
		 <![CDATA[ INSERT INTO ${tableName}(<#list fields as field>${field.COLUMN_NAME}<#if field_has_next>,</#if></#list>)
	VALUES
	(
		<#list fields as field>
			${r'#'}{${field.COLUMN_NAME?lower_case},jdbcType=${field.JDBC_TYPE}}<#if field_has_next>,</#if>
			
		</#list>
	) ]]> 
	</insert>
	
	<insert id="insertBatch" parameterType="java.util.List" flushCache="true">  
	    <![CDATA[ INSERT INTO ${tableName}(<#list fields as field>${field.COLUMN_NAME}<#if field_has_next>,</#if></#list>)
	 ]]> 
	 VALUES
	<foreach collection="list" item="item" index="index" separator=",">
		( 
		<#list fields as field>
			${r'#'}{item.${field.COLUMN_NAME?lower_case},jdbcType=${field.JDBC_TYPE}}<#if field_has_next>,</#if>
			
		</#list>
		)
	</foreach>
    </insert>  
    
	<delete id="deleteById" parameterType="java.lang.String" flushCache="true">
		 <![CDATA[ DELETE FROM ${tableName} WHERE ${fields[0].COLUMN_NAME} = ${r'#'}{${fields[0].COLUMN_NAME?lower_case}} ]]> 
	</delete>	
	
	<delete id="deleteBatch" parameterType="java.util.List" flushCache="true">
		 <![CDATA[ DELETE FROM ${tableName} WHERE ${fields[0].COLUMN_NAME} IN  ]]> 
		<foreach collection="list" index="index" item="item" open="("
			separator="," close=")">
			${r'#'}{item}
		</foreach>
	</delete>

	<delete id="deleteByEntity" parameterType="com.${project}.entity.${entity}" flushCache="true">
		 <![CDATA[ DELETE FROM ${tableName} ]]>
		<where>
			<#list fields as field>
				<if test="${field.COLUMN_NAME?lower_case} != null">
				     <![CDATA[ AND ${field.COLUMN_NAME} = ${r'#'}{${field.COLUMN_NAME?lower_case}} ]]>
				</if>
			</#list>
		</where>
	</delete>
	
	<update id="update" parameterType="com.${project}.entity.${entity}" flushCache="true">
		 <![CDATA[  UPDATE ${tableName} ]]> 
		<set>
			<#list fields as field>
			<if test="${field.COLUMN_NAME?lower_case} != null">
			      <![CDATA[ ${field.COLUMN_NAME} = ${r'#'}{${field.COLUMN_NAME?lower_case}}<#if field_has_next>,</#if> ]]>
			</if>
			</#list>
		</set>
		 <![CDATA[  WHERE ${fields[0].COLUMN_NAME} = ${r'#'}{${fields[0].COLUMN_NAME?lower_case}} ]]> 
	</update>

   
</mapper>