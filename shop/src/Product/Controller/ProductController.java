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

		// �ѱ� ���ڵ� 
		request.setCharacterEncoding("euc-kr");

		// �б⿡ ����� ��ü �غ�
		ServiceForward 		forwardAction 	= 	null; // �ܼ� �̵��� ����� ��ü
		ServiceInterface 	action 			=	null; // �׼��� ������ ����� �������̽� ��ü

		//��ɾ� �и�
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

		case "AddCart" : // file up load ��û�̹Ƿ� db�� ���� �ؾ� �Ѵ�.�׼�!
			action = new addCartAction();

			try
			{
				forwardAction = action.execute(request, response);
			}
			catch(Exception e){}
			break;

		}


		// �׼� ���� ���� ���� ó���ϴ� �κ�
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
