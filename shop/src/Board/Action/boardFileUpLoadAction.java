package Board.Action;

import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import Board.DAO.BoardDAO;
import Board.DTO.BoardDTO;
import ServiceManager.ServiceForward;
import ServiceManager.ServiceInterface;

public class boardFileUpLoadAction implements ServiceInterface {

	@Override
	public ServiceForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		
		// ���� ��ų ��ü�� �غ�
		ServiceForward Fowardaction = new ServiceForward();
		
		String uploadPath=request.getRealPath("/upload");
		
		int size = 10*1024*1024;
		String title="";
		String info="";
		String filename="";
		String origfilename="";
		
		
		try{
			MultipartRequest multi=new MultipartRequest(request,
								uploadPath,
								size, 
								"UTF-8",
					new DefaultFileRenamePolicy());

			title=multi.getParameter("title");
			info=multi.getParameter("info");
			
			System.out.println(title);
			System.out.println(info);
			
			
			Enumeration files=multi.getFileNames();
			
			String file1 =(String)files.nextElement();
			filename=multi.getFilesystemName(file1);
			origfilename= multi.getOriginalFileName(file1);
			
			
		}catch(Exception e){
			e.printStackTrace();
		}


		// �Խù� ��ü �����
		BoardDTO data = new BoardDTO(title,info,"./img/" + filename);
		
		System.out.println("./img/" + filename);
		// DB�� �ֱ� 
		
		// DAO�� ���ؼ� DB���� ó�� �ϱ� ȸ�� ���� ó��
		boolean b = BoardDAO.insertBoard(data);

		if (b) //��� �Խù� �־����� Ȯ��
		{
			HttpSession session = request.getSession();
			session.setAttribute("listsuccess", data);

			Fowardaction.setRedirect(true);
			Fowardaction.setPath("detail.jsp");
		} else // ���н�
		{
			String msg = "�Խù� ��Ͽ� �����߽��ϴ�.";
			request.setAttribute("errMsg", msg);
			Fowardaction.setRedirect(false);
			Fowardaction.setPath("Error.jsp");
		}


		return Fowardaction;

	}

}
