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
	
	public int confirmId(String id) throws Exception{
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		int x=-1;
		
		try {
			conn=getConnection();
			
			String sql="select id from member where id=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs=pstmt.executeQuery();
			
			if(rs.next()) {//해당 아이디가 존재함
				x=1;
			}
			else {//해당 아이디가 존재하지 않음
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
	}//confirmId(String id)

	public LogonDataBean getMember(String id) throws Exception{
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		LogonDataBean member=null;
		
		try {
			conn=getConnection();
			
			String sql="select * from member where id=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				member=new LogonDataBean();
				member.setId(rs.getString("id"));
				member.setPasswd(rs.getString("passwd"));
				member.setName(rs.getString("name"));
				member.setJumin1(rs.getString("jumin1"));
				member.setJumin2(rs.getString("jumin2"));
				member.setEmail(rs.getString("email"));
				member.setBlog(rs.getString("blog"));
				member.setReg_date(rs.getTimestamp("reg_date"));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally{
			if(rs!=null){try{rs.close();}catch(Exception e){e.printStackTrace();}}
			if(pstmt!=null){try{pstmt.close();}catch(Exception e){e.printStackTrace();}}
			if(conn!=null){try{conn.close();}catch(Exception e){e.printStackTrace();}}
		}
		
		return member;
	}//getMember(String id)
	
	public void updateMember(LogonDataBean member) throws Exception{
		Connection conn=null;
		PreparedStatement pstmt=null;
		
		try {
			conn=getConnection();
			
			String sql="update member set passwd=?, name=?, email=?, blog=? where id=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, member.getPasswd());
			pstmt.setString(2, member.getName());
			pstmt.setString(3, member.getEmail());
			pstmt.setString(4, member.getBlog());
			pstmt.setString(5, member.getId());
			pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally{
			if(pstmt!=null){try{pstmt.close();}catch(Exception e){e.printStackTrace();}}
			if(conn!=null){try{conn.close();}catch(Exception e){e.printStackTrace();}}
		}
	}//updateMember(LogongDataBean member)
	
	public int deleteMember(String id, String passwd) throws Exception{
		Connection conn=null;
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
				
				if(dbpasswd.equals(passwd)) {
					pstmt=conn.prepareStatement("delete from member where id=?");
					pstmt.setString(1, id);
					pstmt.executeUpdate();
					x=1;//회원탈퇴 성공
				}
				else {
					x=0;//비밀번호 틀림
				}
			}//if
		}catch(Exception e) {
			e.printStackTrace();
		}finally{
			if(rs!=null){try{rs.close();}catch(Exception e){e.printStackTrace();}}
			if(pstmt!=null){try{pstmt.close();}catch(Exception e){e.printStackTrace();}}
			if(conn!=null){try{conn.close();}catch(Exception e){e.printStackTrace();}}
		}
		return x;
	}//deleteMember(String id, String passwd)
}

