package Member.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;

import DBManager.DBManager;
import Login.DTO.LoginDTO;

public class MemberDAO {
	public static boolean insertMember(LoginDTO data) {
		boolean result = false;
		
		Connection conn = DBManager.get_DB_Connection();
		PreparedStatement pstmt = null;
		
		StringBuffer SQL = new StringBuffer();
		SQL.append("Insert into userlist");
		SQL.append(" values (?,?,?,?,?,?)");
		
		try {
			pstmt=conn.prepareStatement(SQL.toString());
			pstmt.setString(1, data.getId());
			pstmt.setDate(2, data.getuBday());
			pstmt.setString(3, data.getId());
			pstmt.setString(4, data.getPwd());
			pstmt.setString(5, data.getuAdress());
			pstmt.setString(6, data.getuPhone());
			
			int n=pstmt.executeUpdate();
				if(n>0) {
					result =true;
				}
				conn.close();
				pstmt.close();
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	public static boolean isValidId(String uId) {
		boolean check = false;
		
		Connection conn = DBManager.get_DB_Connection();
		
		PreparedStatement pstmt = null;
		ResultSet query_result = null;
		
		StringBuffer SQL = new StringBuffer();
		SQL.append("select uid from userlist where uId=?");
		
		try {
			pstmt = conn.prepareStatement(SQL.toString());
			pstmt.setString(1, uId);
			query_result = pstmt.executeQuery();
			
			query_result.last();
			int count = query_result.getRow();
			query_result.beforeFirst();
			
			if(count == 0) {
				check = true;
			}
			conn.close();
			pstmt.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return check;
		
		
	}
	
	public static LoginDTO getMyInfo(String uId) {
		
		Connection conn = DBManager.get_DB_Connection();
		
		PreparedStatement pstmt = null;
		ResultSet query_result = null;
		
		LoginDTO data = new LoginDTO();
		StringBuffer SQL = new StringBuffer();
		SQL.append("select * from userlist where uId=?");
		
		try {
			pstmt = conn.prepareStatement(SQL.toString());
			pstmt.setString(1, uId);
			query_result = pstmt.executeQuery();
			
			
			
			if(query_result.next()) { // 조회된 값이 존재한다면 조회된 값을 멤버빈 객체에 저장함.
				data.setuName(query_result.getString("uName")); // 멤버빈객체의 Age 값을 조회된 값 중 컬럼명이 age인 데서 가져옴.
				data.setId(query_result.getString("uId"));
				data.setPwd(query_result.getString("uPw"));
				data.setuBday(query_result.getDate("uBday"));
				data.setuAdress(query_result.getString("uAdress"));
				data.setuPhone(query_result.getString("uPhone"));
			}
			conn.close();
			pstmt.close();
			query_result.close();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
		}
		return data;
		
		
	}
}
