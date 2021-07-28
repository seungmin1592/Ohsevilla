package member;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/MemberServlet")
public class MemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("password");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String address1 = request.getParameter("address1");
		String address2 = request.getParameter("address2");
		String address3 = request.getParameter("address3");
		//boolean agreement = Boolean.parseBoolean(request.getParameter("check_3"));
		
		
		MemberDTO memberDTO = new MemberDTO();
		memberDTO.setId(id);
		memberDTO.setPw(pw);
		memberDTO.setName(name);
		memberDTO.setEmail(email);
		memberDTO.setPhone(phone);
		memberDTO.setAddress1(address1);
		memberDTO.setAddress2(address2);
		memberDTO.setAddress3(address3);
		//memberDTO.setAgreement(agreement);
		
		
		MemberDAO memberDAO = MemberDAO.getInstance();
		int resultCnt = memberDAO.insertMember(memberDTO);
		
		response.sendRedirect("login.jsp");
	}
	
	

}
