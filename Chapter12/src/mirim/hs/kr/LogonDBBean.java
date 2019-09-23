package mirim.hs.kr;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LogonDBBean {
	private static LogonDBBean instance=new LogonDBBean();
	
	public static LogonDBBean getInstance() {
		return instance;
	}
	
	private Connection getConnection() throws Exception {
		String url="jdbc:mysql://localhost:3306/mirim";
		String user="test";
		String passwd="1234";
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn=DriverManager.getConnection(url, user, passwd);
		return conn;
	}//getConnection()
	
	public void insertMember(LogonDataBean member) throws Exception {
		Connection conn=null;
		PreparedStatement pstmt=null;
		
		try {
			conn=getConnection();
			String sql="insert into member values(?,?,?,?)";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1,  member.getId());
			pstmt.setString(2,  member.getPasswd());
			pstmt.setString(3,  member.getName());
			pstmt.setTimestamp(4,  member.getReg_date());
		}catch(Exception e) {
			e.printStackTrace();
		}finally{
			if(pstmt!=null){try{pstmt.close();}catch(Exception e){e.printStackTrace();}}
			if(conn!=null){try{conn.close();}catch(Exception e){e.printStackTrace();}}
		}
	}//insertMember()
	
	public int userCheck(String id, String passwd) throws Exception{
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		String dbpass="";
		int x=-1;
		
		try {
			conn=getConnection();
			String sql="select passwd from member where id=?";
			conn.prepareStatement(sql);
			pstmt.setString(1,  id);
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				dbpass=rs.getString("passwd");
				if(dbpass.equals("passwd")) {
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
			e.printStackTrace();
		}finally{
			if(rs!=null){try{rs.close();}catch(Exception e){e.printStackTrace();}}
			if(pstmt!=null){try{pstmt.close();}catch(Exception e){e.printStackTrace();}}
			if(conn!=null){try{conn.close();}catch(Exception e){e.printStackTrace();}}
		}
		
		return x;
	}
}
