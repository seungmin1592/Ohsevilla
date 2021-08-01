package member.command;

import java.sql.Connection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import member.MemberDAO;
import member.MemberDTO;

public class LoginCommand implements Command {

	@Override
	public String proRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {

		request.setCharacterEncoding("UTF-8");
		
		String memberId = request.getParameter("id");
		String password = request.getParameter("password");
		// String reid = request.getParameter("reid");
		
		boolean loginChk = false;
		MemberDAO memberDAO = MemberDAO.getInstance();
		
		int result = memberDAO.loginCheck(memberId, password);
		
		
		if(result == 0) {
			
		}
		
		
		if(memberId!=null && password!=null && memberId.trim().length()>2 && password.trim().length()>3){
		
			try{
	
				
				
				if(member != null){
					// 회원의 정보를 Session 객체에 저장 
					session.setAttribute("loginInfo", member.toLoginInfo());
					loginChk = true;
				}
				
			} catch (SQLException e){
				e.printStackTrace();
			}
			
			  
			
		}
		
		return null;
	}

}
