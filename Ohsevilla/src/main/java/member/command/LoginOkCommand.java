package member.command;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import member.MemberDAO;

public class LoginOkCommand implements Command {

	@Override
	public String proRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String id = request.getParameter("id");
		String pw = request.getParameter("password");
		
		boolean loginCk = false;
		
		int check = MemberDAO.getInstance().loginCheck(id, pw);
		
		request.setAttribute("check", check);
		
		return "/WEB-INF/views/member/LoginOk.jsp";
	}

}
