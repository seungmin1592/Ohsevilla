package member.command;


import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import command.Command;
import member.LoginSessionDTO;
import member.MemberDAO;
import member.MemberDTO;

public class LoginOkCommand implements Command {

	@Override
	public String proRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String id = request.getParameter("id");
		String pw = request.getParameter("password");
		
		MemberDTO member = MemberDAO.getInstance().loginCheck(id, pw);
		
		boolean loginCk = false;
		
		if(member != null) {
			HttpSession session = request.getSession();
			session.setAttribute("member", member);
			loginCk = true;
	
		}
		
		
		System.out.println();
		
		String view = null;
		if(loginCk) {
			view = "/WEB-INF/views/index.jsp";
		} else {
			view = "/WEB-INF/views/member/loginFalse.jsp";
		}
		
		return view;
	}

}
