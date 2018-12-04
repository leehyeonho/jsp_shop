package Member.Action;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Login.DTO.LoginDTO;
import Member.DAO.MemberDAO;
import ServiceManager.ServiceForward;
import ServiceManager.ServiceInterface;

public class JoinAction implements ServiceInterface {

	@Override
	public ServiceForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		ServiceForward Forwardaction = new ServiceForward();

		String uName = request.getParameter("uName");
		String uId = request.getParameter("uId");
		String uPw = request.getParameter("uPw");
		String uAdress = request.getParameter("uAdress");
		String uPhone = request.getParameter("uPhone");
		
		String month = request.getParameter("selectMonth");
		String day = request.getParameter("selectDay");
		String date;
		
		if(Integer.valueOf(month) < 10) month = "0" + month;
		if(Integer.valueOf(day) < 10) day = "0" + day;
		date = new StringBuffer(request.getParameter("selectYear")).append("-")
		.append(month).append("-")
		.append(day).toString();
		
		LoginDTO data = new LoginDTO(uName, Date.valueOf(date), uId, uPw, uAdress, uPhone);

		boolean b = MemberDAO.insertMember(data);
		
		if(b) {
			HttpSession session = request.getSession();
			session.setAttribute("login", data);

			Forwardaction.setRedirect(true);
			Forwardaction.setPath("index.jsp");
		}
		else {
			String msg="회원가입에 실패했습니다.";
			request.setAttribute("errMsg", msg);
			Forwardaction.setRedirect(false);
			Forwardaction.setPath("Error.jsp");
		}
		return Forwardaction;
	}

}
