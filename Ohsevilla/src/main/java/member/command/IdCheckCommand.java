package member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import member.MemberDAO;

public class IdCheckCommand implements Command {

	@Override
	public String proRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String id = request.getParameter("id");
		
		int check = MemberDAO.getInstance().idCheck(id);
		System.out.println(check);
		System.out.println(id);
		
		
		return check > 0 ? "N" : "Y";
	}

}
