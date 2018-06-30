package com.mybatis.generator;

public class MybatisGeneratorConfig {
	
	/**
	 * 生成表名
	 */
	private String[] tableName;
	
	/**
	 * 生成实体名称
	 */
	private String[] entityName;
	
	/**
	 * 生成namespace
	 */
	private String project;
	
	/**
	 * 输出路径
	 */
	private String outputDir;
	
	public String getMappingOutputDir() {
		return mappingOutputDir;
	}

	public void setMappingOutputDir(String mappingOutputDir) {
		this.mappingOutputDir = mappingOutputDir;
	}

	/**
	 * mapping输出路径
	 */
	private String mappingOutputDir;
	
	/**
	 * 生成文件是否覆盖文件
	 */
	private boolean fileOverride = false;
	
	/**
	 * 生成以后是否打开文件夹
	 */
	private boolean open = false;

	public String[] getTableName() {
		return tableName;
	}

	/**
	 * 生成表名
	 */
	public void setTableName(String[] tableName) {
		this.tableName = tableName;
	}
	

	public String[] getEntityName() {
		return entityName;
	}

	/**
	 * 生成实体名称,如果实体名称不填写，将使用默认值
	 */
	public void setEntityName(String[] entityName) {
		this.entityName = entityName;
	}
	
	public String getOutputDir() {
		return outputDir;
	}

	/**
	 * 输出路径
	 */
	public void setOutputDir(String outputDir) {
		this.outputDir = outputDir;
	}

	public boolean isFileOverride() {
		return fileOverride;
	}

	/**
	 * 生成文件是否覆盖文件
	 */
	public void setFileOverride(boolean fileOverride) {
		this.fileOverride = fileOverride;
	}

	public boolean isOpen() {
		return open;
	}

	/**
	 * 生成以后是否打开文件夹
	 */
	public void setOpen(boolean open) {
		this.open = open;
	}

	public String getProject() {
		return project;
	}

	public void setProject(String project) {
		this.project = project;
	}

}
