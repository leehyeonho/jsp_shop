package Product.Action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Login.DTO.LoginDTO;
import Member.DAO.MemberDAO;
import Product.DAO.ProductDAO;
import Product.DTO.ProductDTO;
import ServiceManager.ServiceForward;
import ServiceManager.ServiceInterface;

public class viewCartAction implements ServiceInterface {

	public ServiceForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub

		ServiceForward Forwardaction = new ServiceForward();

		HttpSession session = request.getSession();
		LoginDTO LoginData = (LoginDTO) session.getAttribute("login");
		
		String uId = LoginData.getId();
		ArrayList<ProductDTO> data = new ArrayList<ProductDTO>();
		data = (ArrayList<ProductDTO>) ProductDAO.cartList(uId);
		if(uId == null) {
			String msg="�α����ϼ���";
			request.setAttribute("errMsg", msg);
			Forwardaction.setRedirect(false);
			Forwardaction.setPath("Error.jsp");
		}
		else {
		if(data!=null) {
			request.setAttribute("cartList", data);
			Forwardaction.setRedirect(false);
			Forwardaction.setPath("cart.jsp");
		}
		else {
			String msg="�ٽ� �õ��ϼ���.";
			request.setAttribute("errMsg", msg);
			Forwardaction.setRedirect(false);
			Forwardaction.setPath("Error.jsp");
		}
		}
		
		return Forwardaction;
	}


}
