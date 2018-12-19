package Product.Action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Login.DTO.LoginDTO;
import Member.DAO.MemberDAO;
import Product.DAO.ProductDAO;
import ServiceManager.ServiceForward;
import ServiceManager.ServiceInterface;

public class addCartAction implements ServiceInterface {

	public ServiceForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub

		ServiceForward Forwardaction = new ServiceForward();

		HttpSession session = request.getSession();
		LoginDTO LoginData = (LoginDTO) session.getAttribute("login");
		
		String uId = LoginData.getId();
		String product_id = request.getParameter("product_id");
		
		boolean b = ProductDAO.addCart(uId, product_id);
		if(uId == null) {
			String msg="로그인하세요";
			request.setAttribute("errMsg", msg);
			Forwardaction.setRedirect(false);
			Forwardaction.setPath("Error.jsp");
		}
		else {
		if(b) {
			Forwardaction.setRedirect(true);
			Forwardaction.setPath("index.jsp");
		}
		else {
			String msg="다시 시도하세요.";
			request.setAttribute("errMsg", msg);
			Forwardaction.setRedirect(false);
			Forwardaction.setPath("Error.jsp");
		}
		}
		
		return Forwardaction;
	}


}
