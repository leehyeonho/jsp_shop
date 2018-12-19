package Login.Action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ServiceManager.ServiceForward;
import ServiceManager.ServiceInterface;

public class LogoutProcess implements ServiceInterface {

	@Override
	public ServiceForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		
		ServiceForward Forwardaction = new ServiceForward();
		

			HttpSession session = request.getSession();
			session.invalidate();
			Forwardaction.setRedirect(false);
			Forwardaction.setPath("index.jsp");
		
		return Forwardaction;
	}
	

}
