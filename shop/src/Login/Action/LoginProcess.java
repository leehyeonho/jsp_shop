package Login.Action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Login.DAO.LoginDAO;
import Login.DTO.LoginDTO;
import ServiceManager.ServiceForward;
import ServiceManager.ServiceInterface;

public class LoginProcess implements ServiceInterface {

	@Override
	public ServiceForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		
		ServiceForward Forwardaction = new ServiceForward();
		
		String uId = request.getParameter("uId");
		String uPw = request.getParameter("uPw");
		LoginDTO data = new LoginDTO(uId, uPw);
		data.setId(uId);
		data.setPwd(uPw);
		boolean b = LoginDAO.isMember(data);
		if(b) {
			HttpSession session = request.getSession();
			session.setAttribute("login", data);
			Forwardaction.setRedirect(true);
			Forwardaction.setPath("index.jsp");
		}
		else {
			String msg="아이디 또는 비밀번호가 틀립니다.";
			request.setAttribute("errMsg", msg);
			Forwardaction.setRedirect(false);
			Forwardaction.setPath("Error.jsp");
		}
		return Forwardaction;
	}
	

}
