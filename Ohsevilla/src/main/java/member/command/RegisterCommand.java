package member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;

public class RegisterCommand implements Command{

	@Override
	public String proRequest(HttpServletRequest request, HttpServletResponse response) {
		
		return "/WEB-INF/views/member/join.jsp";
	}

}