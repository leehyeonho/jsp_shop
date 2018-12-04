package Member.Action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Login.DTO.LoginDTO;
import Member.DAO.MemberDAO;
import ServiceManager.ServiceForward;
import ServiceManager.ServiceInterface;

public class MyInfoAction implements ServiceInterface {

	@Override
	public ServiceForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		ServiceForward Forwardaction = new ServiceForward();

		HttpSession session = request.getSession();
		LoginDTO LoginData = (LoginDTO) session.getAttribute("login");
		String uId = LoginData.getId();
		
		LoginData = MemberDAO.getMyInfo(uId);
		

			request.setAttribute("myInfo", LoginData);
			Forwardaction.setRedirect(false);
			Forwardaction.setPath("/Member/myInfo.jsp");
		return Forwardaction;
	}

}
