package member.command;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;


public class LoginCommand implements Command{

	@Override
	public String proRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		return "/WEB-INF/views/member/login.jsp";
	}

}
