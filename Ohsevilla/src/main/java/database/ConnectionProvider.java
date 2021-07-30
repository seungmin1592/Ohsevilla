package database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionProvider {

	public static Connection getConnection() {
		Connection conn = null;
		
		try {
			String url = "jdbc:oracle:thin:@localhost:1521:XE";
			String id = "ohsevilla";
			String pw = "1234";
			conn = DriverManager.getConnection(url, id, pw);
			System.out.println("연결 성공");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("연결 실패");
		}
		
		return conn;
	}
}
