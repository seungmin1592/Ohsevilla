package controller;

import java.io.BufferedInputStream;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Properties;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.coyote.http11.filters.BufferedInputFilter;

import command.Command;


public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private HashMap<String, Object> commandMap = new HashMap<String, Object>();

    public FrontController() {
        super();
    }

	public void init(ServletConfig config) throws ServletException {
		
		// 설정파일의 경로 가져오기
		String configFile = config.getInitParameter("configFile");
		
		// 설정 파일의 시스템 경로
		String configPath = config.getServletContext().getRealPath(configFile);
		
		FileInputStream fis = null;
		BufferedInputStream bis = null;
		
		Properties prop = new Properties();
		
		
		try {
			fis = new FileInputStream(configPath);
			bis = new BufferedInputStream(fis, 1024);
			prop.load(bis);
			
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		Iterator<Object> itr = prop.keySet().iterator();
		
		while(itr.hasNext()) {
			String command = (String)itr.next();
			String className = prop.getProperty(command);
			
			Class<?> handlerClass;
			try {
				handlerClass = Class.forName(className);
				Object handlerIntstace = handlerClass.getDeclaredConstructor().newInstance();
				
				commandMap.put(command, handlerIntstace);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
	private void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cmd = request.getServletPath();
		
		String viewPage = null;
		
		try {
		    Command com = (Command) commandMap.get(cmd);
		    viewPage = com.proRequest(request, response);
		} catch (Exception e) {
		    e.printStackTrace();
		}
		
		if(viewPage!=null) {
		    RequestDispatcher rd = request.getRequestDispatcher(viewPage);
		    rd.forward(request, response);
		}
	}

}
