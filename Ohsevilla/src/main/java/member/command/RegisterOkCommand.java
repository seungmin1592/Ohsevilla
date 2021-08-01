package member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import member.MemberDAO;
import member.MemberDTO;

public class RegisterOkCommand implements Command {

	@Override
	public String proRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		
		MemberDTO memberDTO = new MemberDTO();
		memberDTO.setId(request.getParameter("id"));
		memberDTO.setPw(request.getParameter("password"));
		memberDTO.setName(request.getParameter("name"));
		memberDTO.setEmail(request.getParameter("email"));
		memberDTO.setPhone(request.getParameter("phone"));
		memberDTO.setAddress1(request.getParameter("address1"));
		memberDTO.setAddress2(request.getParameter("address2"));
		memberDTO.setAddress3(request.getParameter("address3"));
		//memberDTO.setAgreement(agreement);
		
		
		int check = MemberDAO.getInstance().insertMember(memberDTO);
		
		request.setAttribute("check", check);
		
		return "/WEB-INF/views/member/registerOk.jsp";
	}

}
