package mirim.hs.kr;

import java.sql.Connection;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class LogonDBBean {
	//DAO
	
	private static LogonDBBean instance=new LogonDBBean();
	
	//싱글톤 패턴
	public static LogonDBBean getInstance() {		
		return instance;
	}
	
	private Connection getConnection() throws Exception{
		Context initCtx=new InitialContext();
		Context envCtx=(Context)initCtx.lookup("java:comp/env");
		DataSource ds=(DataSource)envCtx.lookup("basicjsp");
		
		return ds.getConnection();
	}//getConnection()
	
	
}
