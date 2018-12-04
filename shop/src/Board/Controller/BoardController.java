package Board.Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Board.Action.boardFileUpLoadAction;
import Board.Action.boardListAction;
import ServiceManager.ServiceForward;
import ServiceManager.ServiceInterface;

/**
 * Servlet implementation class BoardController
 */
@WebServlet("/board")
public class BoardController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				
		// �ѱ� ���ڵ� 
		request.setCharacterEncoding("euc-kr");
		
		// �б⿡ ����� ��ü �غ�
				ServiceForward 		forwardAction 	= 	null; // �ܼ� �̵��� ����� ��ü
				ServiceInterface 	action 			=	null; // �׼��� ������ ����� �������̽� ��ü
				
				//��ɾ� �и�
				String cmd = request.getParameter("cmd");
				
				switch(cmd)
				{
						case "boardForm" : //�ܼ��� �α��� ������ �̵� 
							//�ܼ� �̵��̹Ƿ� forwardAction�� ���
							forwardAction = new ServiceForward();
							forwardAction.setRedirect(false);
							forwardAction.setPath("/Board/boardForm.jsp"); // Login���� �ȿ� login.jsp�� �̵� ����
						break;
						
						case "fileupload" : // file up load ��û�̹Ƿ� db�� ���� �ؾ� �Ѵ�.�׼�!
							action = new boardFileUpLoadAction();
							
							try
							{
								forwardAction = action.execute(request, response);
							}
							catch(Exception e){}
						break;
						case "boardlist" :
							action = new boardListAction();
							
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
