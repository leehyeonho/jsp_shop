package Login.Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Login.Action.LoginProcess;
import ServiceManager.ServiceForward;
import ServiceManager.ServiceInterface;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/login")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		ServiceForward forwardAction = null;
		ServiceInterface action = null;
		
		String cmd = request.getParameter("cmd");
		
		switch(cmd) {
		case "loginForm" :
			forwardAction = new ServiceForward();
			forwardAction.setRedirect(false);
			forwardAction.setPath("/Login/login.jsp");
			break;
		case "loginProcess" :
			action = new LoginProcess();
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
