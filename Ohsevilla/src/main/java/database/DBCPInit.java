package database;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;

public class DBCPInit extends HttpServlet{
	
	@Override
	public void init(ServletConfig config) throws ServletException {
		try {
			String jdbcDriver = "oracle.jdbc.driver.OracleDriver";
			Class.forName(jdbcDriver);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
