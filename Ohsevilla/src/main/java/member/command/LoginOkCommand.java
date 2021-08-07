package member.command;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import command.Command;
import member.MemberDAO;
import member.MemberDTO;

public class LoginOkCommand implements Command {

	@Override
	public String proRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String id = request.getParameter("id");
		String pw = request.getParameter("password");
		
		MemberDTO member = MemberDAO.getInstance().loginCheck(id, pw);
		
		if(member != null) {
			HttpSession session = request.getSession();
			session.setAttribute(pw, session);
		}
		
		
		return "/WEB-INF/views/member/LoginOk.jsp";
	}

}
