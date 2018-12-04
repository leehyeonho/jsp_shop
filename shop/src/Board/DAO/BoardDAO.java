package Board.DAO;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Board.DTO.BoardDTO;
import DBManager.DBManager;
public class BoardDAO {

	public static boolean insertBoard(BoardDTO data)
	{
		boolean result = false;

		Connection conn = DBManager.get_DB_Connection();
		PreparedStatement pstmt = null;

		StringBuffer SQL = new StringBuffer();
		SQL.append("Insert into Image");
		SQL.append(" values (?,?,?,now())");

		try{
			pstmt=conn.prepareStatement(SQL.toString());
			pstmt.setString(1, data.getTitle()); // title 지정
			pstmt.setString(2, data.getInfo()); // 정보 지정
			pstmt.setString(3, data.getPath()); // 이미지 패스 지정 

			int n=pstmt.executeUpdate();
			if(n>0)
			{
				result = true;
			}

			// 자원 반납
			conn.close();
			pstmt.close();

		}catch(SQLException e){e.printStackTrace();}

		return result;
	}

	public static ArrayList<BoardDTO> showBoard()
	{
		//List<BoardDTO> result = new ArrayList<BoardDTO>();
		ArrayList<BoardDTO> result = new ArrayList<BoardDTO>();
		Connection conn = DBManager.get_DB_Connection();
		PreparedStatement pstmt = null;
		ResultSet query_result = null;

		StringBuffer SQL = new StringBuffer();
		SQL.append("select * from image");

		try{
			pstmt=conn.prepareStatement(SQL.toString());
			query_result = pstmt.executeQuery();

			query_result.last();
			int count = query_result.getRow();
			query_result.beforeFirst();
			
			if(count > 0) {
				while (query_result.next()) {
					String title = query_result.getString("title");
					String info = query_result.getString("info");
					String path = query_result.getString("path");
					//String id = query_result.getString("id");
					//Date date = query_result.getDate("date");
					BoardDTO dto = new BoardDTO(title, info, path);
					dto.setTitle(title);
					dto.setInfo(info);
					dto.setPath(path);
					//dto.setId(id);
					//dto.setDate(date);
					result.add(dto);
				}
			}
			else {
				
			}

			// 자원 반납
			conn.close();
			pstmt.close();

		}catch(SQLException e){e.printStackTrace();}
		return result;
	}

}
