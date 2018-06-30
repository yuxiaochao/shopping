package com.mybatis.generator;

public class MybatisGenerator {

	public static void main(String[] args) {
		MybatisGeneratorUtil mgu = new MybatisGeneratorUtil();
		
		/*MybatisGeneratorDataSource dataSource = new MybatisGeneratorDataSource();
		dataSource.setDbType("oracle");
		dataSource.setDriverName("oracle.jdbc.driver.OracleDriver");
		dataSource.setUrl("jdbc:oracle:thin:@192.168.2.205:1521/orcl");
		dataSource.setUserName("BISHE");
		dataSource.setPassword("root");
		mgu.setDataSource(dataSource);*/
		
		MybatisGeneratorDataSource dataSource = new MybatisGeneratorDataSource();
		dataSource.setDbType("mysql");
		dataSource.setDriverName("com.mysql.jdbc.Driver");
		dataSource.setUrl("jdbc:mysql://xn--9kq.biz:3306/shop?useUnicode=true&amp;characterEncoding=utf-8");
		dataSource.setUserName("root");
		dataSource.setPassword("root");
		mgu.setDataSource(dataSource);
		
		MybatisGeneratorConfig config = new MybatisGeneratorConfig();
		
		config.setTableName(new String[] {"shop_registCode"});
		config.setEntityName(new String[] {"RegistCode"});
		config.setProject("shop");
		//config.setMappingOutputDir("E:/bishe/springboot/src/main/resources/mapping");
		config.setOutputDir("D:/shoppingspace/springboot/src/main/java/");
		
		//config.setMappingOutputDir("C:/output/");
		//config.setOutputDir("C:/output/");
		config.setOpen(true);
		config.setFileOverride(true);
		mgu.setConfig(config);
		
		mgu.execute();
	}

}
