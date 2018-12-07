package Product.Action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Board.DAO.BoardDAO;
import Board.DTO.BoardDTO;
import Product.DAO.ProductDAO;
import Product.DTO.ProductDTO;
import ServiceManager.ServiceForward;
import ServiceManager.ServiceInterface;

public class ProductListAction implements ServiceInterface {

	public ServiceForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub

		ServiceForward Forwardaction = new ServiceForward();

		
		ArrayList<ProductDTO> data = new ArrayList<ProductDTO>();
		String category = request.getParameter("category");
		String content = request.getParameter("search");
		if (category == null) {
			if (content != null) {
				data = (ArrayList<ProductDTO>) ProductDAO.findByProductName(content);
			} else {
				data = (ArrayList<ProductDTO>) ProductDAO.findAll();
			}

		} else {
			data = (ArrayList<ProductDTO>) ProductDAO.findByCategory(category);
		}
		
		request.setAttribute("ProductList", data);
		Forwardaction.setRedirect(false);
		Forwardaction.setPath("content.jsp");
		return Forwardaction;
	}


}
