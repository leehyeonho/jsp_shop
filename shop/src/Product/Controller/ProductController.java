package Product.Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Login.Action.LoginProcess;
import Member.Action.JoinAction;
import Member.Action.MyInfoAction;
import Product.Action.ProductListAction;
import ServiceManager.ServiceForward;
import ServiceManager.ServiceInterface;

/**
 * Servlet implementation class ProductController
 */
@WebServlet("/product")
public class ProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    @Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		ServiceForward forwardAction = null;
		ServiceInterface action = null;
		
		String cmd = request.getParameter("cmd");
		
		switch(cmd) {
		case "ProductList" :
			action = new ProductListAction();
			try {
				forwardAction = action.execute(request, response);
				
			} catch (Exception e) {}
			break;
		case "myInfo" :
			action = new MyInfoAction();
			try {
				forwardAction = action.execute(request, response);
				
			} catch (Exception e) {}
			break;
		}

		
		if(forwardAction != null) {
			if(forwardAction.isRedirect()) {
				response.sendRedirect(forwardAction.getPath());
			}
			else {
				RequestDispatcher dispatcher = request.getRequestDispatcher(forwardAction.getPath());
				dispatcher.forward(request, response);
			}
		}
	}

	/**
     * @see HttpServlet#HttpServlet()
     */
    public ProductController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
