package member;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class MemberDAO {

	private static MemberDAO instance;
	
	private String driver = "oracle.jdbc.driver.OracleDriver";
	private String url = "jdbc:oracle:thin:@localhost:1521:xe";
	private String username = "ohsevilla";
	private String userpw = "1234";
	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public MemberDAO() {
		try {
			Class.forName(driver);
			System.out.println("OracleDriver.class생성, 드라이버 로딩 성공");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	public void getConnection() {
		try {
			conn = DriverManager.getConnection(url, username, userpw);
			System.out.println("접속 성공");
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static MemberDAO getInstance() {
		if(instance == null) {
			// 스레드 동기화 (여기 안에 들어오는 스레드는 한번에 한번만 통과 시킨다)
			synchronized (MemberDAO.class) {
				instance = new MemberDAO(); // MemberDAO는 이제 메모리에 한번만 생성된다.
			}
		}
		return instance;
	}
	
	
	
	// 데이터 insert
	public int insertMember(MemberDTO memberDTO) {
		int resultCnt = 0;
		
		String sql = "insert into member values (?,?,?,?,?,?)";
		
		getConnection(); // 접속
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, memberDTO.getId());
			pstmt.setString(2, memberDTO.getPw());
			pstmt.setString(3, memberDTO.getName());
			pstmt.setString(4, memberDTO.getEmail());
			pstmt.setString(5, memberDTO.getPhone());
			pstmt.setString(6, (memberDTO.getAddress2() + memberDTO.getAddress3()));
			
			resultCnt = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if(pstmt != null) {
					pstmt.close();
				}
				if(conn != null) {
					conn.close();
				}
			} catch(SQLException e) {
				e.printStackTrace();
			}
		}
		
		return resultCnt;
	}
	
	
}
