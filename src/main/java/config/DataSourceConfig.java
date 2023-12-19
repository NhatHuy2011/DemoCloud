package config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

@Configuration
public class DataSourceConfig {
	@Bean
	public DriverManagerDataSource dataSource() {
		DriverManagerDataSource dataSource = new DriverManagerDataSource();
		dataSource.setDriverClassName("com.mysql.jdbc.Driver");
	    dataSource.setUrl("jdbc:mysql://google/occupationdb?cloudSqlInstance=cloudnhom12:asia-southeast1:jobseeking&socketFactory=com.google.cloud.sql.mysql.SocketFactory&user=root&password=");
	    dataSource.setUsername("root");
	    dataSource.setPassword("");
	    return dataSource;
	}
}