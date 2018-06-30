package com.mybatis.generator;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.dbutils.DbUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.MapListHandler;
import org.apache.commons.lang3.RandomUtils;
import org.apache.commons.lang3.StringUtils;

import freemarker.template.Configuration;
import freemarker.template.DefaultObjectWrapper;
import freemarker.template.Template;

public class MybatisGeneratorUtil {
	
	private MybatisGeneratorConfig config;
	
	private MybatisGeneratorDataSource dataSource;
	
	private Connection getConn() throws Exception {
	    DbUtils.loadDriver(dataSource.getDriverName());
	    return DriverManager.getConnection(dataSource.getUrl(), dataSource.getUserName(), dataSource.getPassword());
	}
	 
	private void closeConn(Connection conn) throws Exception {
	    DbUtils.closeQuietly(conn);
	}
	
	private List queryList(String sql) throws Exception {
		List list = null;
	    Connection conn = null;
	    try {
	        conn = getConn();
	        QueryRunner runner = new QueryRunner();
	        list = runner.query(conn,sql, new MapListHandler());
	    } catch (SQLException e) {
	    	e.printStackTrace();
	    } finally {
	        closeConn(conn);
	    }
	    
	    return list;
	}
	
	/*private Connection getConn() throws Exception {
	    Class.forName(dataSource.getDriverName());
	    return DriverManager.getConnection(dataSource.getUrl(), dataSource.getUserName(), dataSource.getPassword());
	}
	 
	private void closeConn(Connection conn) throws Exception {
        if (conn != null) {
            conn.close();
        }
	}
	
	private List queryList(String sql) throws Exception {
		List list = null;
	    Connection conn = null;
	    try {
	        conn = getConn();
	        
	        PreparedStatement pstate = conn.prepareStatement(sql);
			ResultSet results = pstate.executeQuery();

			list = new ArrayList<HashMap>();
			while (results.next()) {
				HashMap field = new HashMap();
				field.put("COLUMN_NAME", results.getString(0));
				field.put("DATA_TYPE", results.getString(1));
				field.put("DATA_LENGTH", results.getString(2));
				field.put("NULLABLE", results.getString(3));
				field.put("PROPERTY_TYPE", results.getString(4));
				field.put("COMMENTS", results.getString(5));
				list.add(field);
			}
	        
	        //QueryRunner runner = new QueryRunner();
	        //list = runner.query(conn,sql, new MapListHandler());
	    } catch (SQLException e) {
	    	e.printStackTrace();
	    } finally {
	        closeConn(conn);
	    }
	    
	    return list;
	}
*/	
	
	private String parseEntity(String tableName) {
		String returnValue = "";
		String[] _arr = StringUtils.split(tableName,"_");
		returnValue = _arr[_arr.length-1];
		returnValue = returnValue.substring(0, 1).toUpperCase() + returnValue.substring(1).toLowerCase();
		return returnValue;
	}
	
	private void buildFile(String templateFile,String packageName,String destFile,Map dataModel) {
		try {
			String folderName = config.getOutputDir() + packageName.replace('.', '/') + "/";
			java.io.File folder = new File(folderName);
			if(!folder.exists()) {
				folder.mkdirs();
			}
			
			dataModel.put("package", packageName);
			
			File file = new File(folderName + destFile);
			if(!file.exists() || (file.exists() && config.isFileOverride())) {
				Configuration cfg = new Configuration(Configuration.VERSION_2_3_23);
				
				String dir = Thread.currentThread().getContextClassLoader().getResource("com/mybatis/generator/template").getPath();
				cfg.setDirectoryForTemplateLoading(new File(dir));
				cfg.setObjectWrapper(new DefaultObjectWrapper(Configuration.VERSION_2_3_23));
				Template temp = cfg.getTemplate(templateFile + ".ftl");
				FileWriter fw = new FileWriter(file);
				BufferedWriter bw = new BufferedWriter(fw);
				temp.process(dataModel, bw);
				bw.flush();
				fw.close();
				
				System.out.println("√ 输出文件 " + folderName + destFile + "成功！");
			} else {
				System.out.println("× 输出文件 " + folderName + destFile + "失败！原因：文件已存在！");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void execute() {
		for (int i = 0; i < config.getTableName().length; i++) {
			String _tableName = config.getTableName()[i];
			Map root = new HashMap();
			root.put("tableName", _tableName);
			String _entityName = "";
			if(config.getEntityName().length==config.getTableName().length) {
				_entityName = config.getEntityName()[i];
			} else {
				_entityName = parseEntity(_tableName);
			}
			
			String entity = _entityName + "Entity";
			root.put("entity", entity);
			String mappering = _entityName + "Mappering";
			root.put("mappering", mappering);
			String mapper = _entityName + "Mapper";
			root.put("mapper", mapper);
			String service = _entityName + "Service";
			root.put("service", service);
			String serviceImpl = _entityName + "ServiceImpl";
			root.put("serviceImpl", serviceImpl);
			root.put("serialVersionUID", String.valueOf(RandomUtils.nextLong(1L, 999999999999999999L)));
			root.put("project", config.getProject());
			
			try {
				if("oracle".equals(dataSource.getDbType())) {
					String sql = "select t.COLUMN_NAME,t.DATA_TYPE,t.DATA_LENGTH,t.NULLABLE,"
							+ "decode(t.DATA_TYPE,'FLOAT','float','NUMBER','Integer','DATE','Date','String') as PROPERTY_TYPE,"
							+ "decode(t.DATA_TYPE,'FLOAT','FLOAT','NUMBER','INTEGER','DATE','TIMESTAMP','VARCHAR') as JDBC_TYPE,"
							+ "c.COMMENTS from user_tab_cols t "
							+ "join user_col_comments c on t.table_name=c.table_name and t.column_name=c.column_name "
							+ "where lower(t.table_name)='" + StringUtils.lowerCase(_tableName) + "' order by t.internal_column_id asc";
					List fieldsList = queryList(sql);
					root.put("fields", fieldsList);
				} else if("mysql".equals(dataSource.getDbType())) {
					String sql = "SELECT COLUMN_NAME,DATA_TYPE,CHARACTER_MAXIMUM_LENGTH AS DATA_LENGTH,IF(IS_NULLABLE='YES','Y','N') AS NULLABLE,"
							+ "CASE DATA_TYPE WHEN 'float' THEN 'float' WHEN 'int' THEN 'Integer' WHEN 'datetime' THEN 'Date' ELSE 'String' END AS PROPERTY_TYPE,"
							+ "CASE DATA_TYPE WHEN 'float' THEN 'FLOAT' WHEN 'int' THEN 'INTEGER' WHEN 'datetime' THEN 'TIMESTAMP' ELSE 'VARCHAR' END AS JDBC_TYPE,"
							+ "COLUMN_COMMENT AS COMMENTS FROM information_schema.columns "
							+ "WHERE lower(table_name) = '" + StringUtils.lowerCase(_tableName) + "' ORDER BY ordinal_position ASC";
					List fieldsList = queryList(sql);
					root.put("fields", fieldsList);		
				}
			} catch (Exception e) {
				e.printStackTrace();
			}			
		
			buildFile("entity.java","com." + config.getProject() + ".entity",entity + ".java",root);
			buildFile("mappering." + dataSource.getDbType() + ".xml","com." + config.getProject() + ".mapping." + dataSource.getDbType(),mappering + ".xml",root);
			buildFile("mapper.java","com." + config.getProject() + ".mapper",mapper + ".java",root);
			buildFile("service.java","com." + config.getProject() + ".service",service + ".java",root);
			buildFile("serviceImpl.java","com." + config.getProject() + ".service.impl",serviceImpl + ".java",root);
		}
		
		// 打开输出目录
		if (config.isOpen()) {
			try {
				String osName = System.getProperty("os.name");
				if (osName != null) {
					if (osName.contains("Mac")) {
						Runtime.getRuntime().exec("open " + config.getOutputDir());
					} else if (osName.contains("Windows")) {
						Runtime.getRuntime().exec("cmd /c start " + config.getOutputDir());
					}
				}
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}

	public MybatisGeneratorConfig getConfig() {
		return config;
	}

	public void setConfig(MybatisGeneratorConfig config) {
		this.config = config;
	}

	public MybatisGeneratorDataSource getDataSource() {
		return dataSource;
	}

	public void setDataSource(MybatisGeneratorDataSource dataSource) {
		this.dataSource = dataSource;
	}

}
