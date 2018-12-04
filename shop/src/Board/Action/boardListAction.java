	package Board.Action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Board.DAO.BoardDAO;
import Board.DTO.BoardDTO;
import ServiceManager.ServiceForward;
import ServiceManager.ServiceInterface;

public class boardListAction implements ServiceInterface {

	public ServiceForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub

		ServiceForward Forwardaction = new ServiceForward();

		ArrayList<BoardDTO> data = BoardDAO.showBoard();
		
		request.setAttribute("list", data);
		Forwardaction.setRedirect(true);
		Forwardaction.setPath("boardList.jsp");
		return Forwardaction;
	}


}
