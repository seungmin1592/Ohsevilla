package member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import database.ConnectionProvider;
import database.JdbcUtil;


public class MemberDAO {

	private static MemberDAO instance = new MemberDAO();
	
	public static MemberDAO getInstance() {
		return instance;
	}

	
	// 회원 데이터 insert
	public int insertMember(MemberDTO memberDTO) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		int resultCnt = 0;
		
	
		try {
			String sql = "insert into member values (?,?,?,?,?,?,?,?)";
			
			conn = ConnectionProvider.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, memberDTO.getId());
			pstmt.setString(2, memberDTO.getPw());
			pstmt.setString(3, memberDTO.getName());
			pstmt.setString(4, memberDTO.getEmail());
			pstmt.setString(5, memberDTO.getPhone());
			pstmt.setString(6, memberDTO.getAddress1());
			pstmt.setString(7, memberDTO.getAddress2());
			pstmt.setString(8, memberDTO.getAddress3());
			
			resultCnt = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(pstmt);
			JdbcUtil.close(conn);
		}
		
		return resultCnt;
	}
	
	
	public int idCheck(String id) {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		int resultCnt = 0;
		
		try {
			String sql = "select id from member where id = ?";
			conn = ConnectionProvider.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				resultCnt = 1;
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
			JdbcUtil.close(conn);
		}

		return resultCnt;
	}
	
	// 로그인
	public MemberDTO loginCheck(String id, String pw) {
		
		MemberDTO member = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {

		    String sql = "select * from member where id=?";
			
		    conn = ConnectionProvider.getConnection();
		    pstmt = conn.prepareStatement(sql);
		    pstmt.setString(1, id);
		    rs = pstmt.executeQuery();
		    
		    if(rs.next()) {
		    	if(rs.getString("pw").equals(pw)) {
		    		member = new MemberDTO();
					member.setId(rs.getString("id"));
					member.setPw(rs.getString("pw"));
					member.setName(rs.getString("name"));
					member.setEmail(rs.getString("email"));
					member.setPhone(rs.getString("phone"));
					member.setAddress1(rs.getString("address1"));
					member.setAddress2(rs.getString("address2"));
					member.setAddress3(rs.getString("address3"));
		    	}
		    }
		}catch (Exception e) {
		    e.printStackTrace();
		}finally {
		    JdbcUtil.close(rs);
		    JdbcUtil.close(conn);
		    JdbcUtil.close(pstmt);
		}
		
		return member;
    }

	
	
}
