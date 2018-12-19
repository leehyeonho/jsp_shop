package Product.Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Product.Action.ProductListAction;
import Product.Action.addCartAction;
import Product.Action.viewCartAction;
import ServiceManager.ServiceForward;
import ServiceManager.ServiceInterface;

/**
 * Servlet implementation class ProductController
 */
@WebServlet("/product")
public class ProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ProductController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		// 한글 인코딩 
		request.setCharacterEncoding("euc-kr");

		// 분기에 사용할 객체 준비
		ServiceForward 		forwardAction 	= 	null; // 단순 이동에 사용할 객체
		ServiceInterface 	action 			=	null; // 액션이 있을때 사용할 인터페이스 객체

		//명령어 분리
		String cmd = request.getParameter("cmd");

		switch(cmd)
		{
		case "ProductList" :
			action = new ProductListAction();
			try
			{
				forwardAction = action.execute(request, response);
			}
			catch(Exception e){}
			break;
		case "viewCart" :
			action = new viewCartAction();
			try
			{
				forwardAction = action.execute(request, response);
			}
			catch(Exception e){}
			break;

		case "AddCart" : // file up load 요청이므로 db에 접근 해야 한다.액션!
			action = new addCartAction();

			try
			{
				forwardAction = action.execute(request, response);
			}
			catch(Exception e){}
			break;

		}


		// 액션 변수 값을 보고 처리하는 부분
		if(forwardAction != null)
		{
			if(forwardAction.isRedirect())
			{
				response.sendRedirect(forwardAction.getPath());
			}
			else
			{
				RequestDispatcher dispatcher=request.getRequestDispatcher(forwardAction.getPath());
				dispatcher.forward(request, response);
			}
		}
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
