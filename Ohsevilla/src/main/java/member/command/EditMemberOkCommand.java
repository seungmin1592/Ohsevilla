package member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import command.Command;
import member.MemberDAO;
import member.MemberDTO;

public class EditMemberOkCommand implements Command {

	@Override
	public String proRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		MemberDTO memberDTO = new MemberDTO();
		memberDTO.setId(request.getParameter("id"));
		memberDTO.setPw(request.getParameter("password"));
		memberDTO.setName(request.getParameter("name"));
		memberDTO.setEmail(request.getParameter("email"));
		memberDTO.setPhone(request.getParameter("phone"));
		memberDTO.setAddress1(request.getParameter("address1"));
		memberDTO.setAddress2(request.getParameter("address2"));
		memberDTO.setAddress3(request.getParameter("address3"));
		
		
		int check = MemberDAO.getInstance().editMember(memberDTO);
		
		if(check != 0) {
			HttpSession session = request.getSession();
			session.setAttribute("member", memberDTO);
		}
		
		request.setAttribute("check", check);
		
		return "/WEB-INF/views/member/editMemberOk.jsp";
	}

}
