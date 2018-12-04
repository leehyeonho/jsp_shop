package Login.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;

import DBManager.DBManager;
import Login.DTO.LoginDTO;

public class LoginDAO {
	public static boolean isMember(LoginDTO data) {
		boolean check = false;
		
		Connection conn = DBManager.get_DB_Connection();
		
		PreparedStatement pstmt = null;
		ResultSet query_result = null;
		
		StringBuffer SQL = new StringBuffer();
		SQL.append("select upw from userlist where uid=?");
		
		try {
			pstmt = conn.prepareStatement(SQL.toString());
			pstmt.setObject(1, data.getId(), Types.VARCHAR);
			query_result = pstmt.executeQuery();
			
			query_result.last();
			int count = query_result.getRow();
			query_result.beforeFirst();
			
			if(count > 0) {
				while (query_result.next()) {
					String _upw = query_result.getString(1);
					
					if (data.getPwd().equals(_upw)) {
						check = true;
					}
					else {
						check = false;
					}
				}
			}
			conn.close();
			pstmt.close();
			query_result.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return check;
		
		
	}
}
