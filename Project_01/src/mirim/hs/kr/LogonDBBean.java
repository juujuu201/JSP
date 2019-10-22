package mirim.hs.kr;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

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
	
	public void insertMember(LogonDataBean member) throws Exception{
		Connection conn=null;
		PreparedStatement pstmt=null;
		
		try {
			conn=getConnection();	//연결
			
			String sql="insert into member values(?,?,?,?,?,?,?,?)";
			
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, member.getId());
			pstmt.setString(2, member.getPasswd());
			pstmt.setString(3, member.getName());
			pstmt.setString(4, member.getJumin1());
			pstmt.setString(5, member.getJumin2());
			pstmt.setString(6, member.getEmail());
			pstmt.setString(7, member.getBlog());
			pstmt.setTimestamp(8, member.getReg_date());
			
			pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally{
			if(pstmt!=null){try{pstmt.close();}catch(Exception e){e.printStackTrace();}}
			if(conn!=null){try{conn.close();}catch(Exception e){e.printStackTrace();}}
		}
	}//insertMember()
	
	public int userCheck(String id, String passwd) throws Exception{
		Connection  conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		String dbpasswd="";
		int x=-1;
		
		try {
			conn=getConnection();
			
			String sql="select passwd from member where id=?";
			
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, id);
			
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				dbpasswd=rs.getString("passwd");
				if(passwd.equals(dbpasswd)) {
					x=1;
				}
				else {
					x=0;
				}
			}
			else {
				x=-1;
			}
		}catch(Exception e) {
			
		}finally{
			if(rs!=null){try{rs.close();}catch(Exception e){e.printStackTrace();}}
			if(pstmt!=null){try{pstmt.close();}catch(Exception e){e.printStackTrace();}}
			if(conn!=null){try{conn.close();}catch(Exception e){e.printStackTrace();}}
		}
		
		return x;
	}//userCheck(String id, String passwd)
}
