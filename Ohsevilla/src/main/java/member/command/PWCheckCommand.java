package member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import command.Command;
import member.MemberDTO;

public class PWCheckCommand implements Command {

	@Override
	public String proRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {

		String pw = request.getParameter("password");
		
		HttpSession session = request.getSession();
		MemberDTO member = (MemberDTO) session.getAttribute("member");
		
		String sessionPw = member.getPw();

		String view = "/WEB-INF/views/member/pwCheckFalse.jsp";

		if(pw.equals(sessionPw)) {
			System.out.println("ok");
			view = "/WEB-INF/views/member/editMember.jsp";
		} 

		return view;
	}

}
