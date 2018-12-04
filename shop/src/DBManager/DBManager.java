package DBManager;

import java.sql.Connection;
import java.sql.SQLException;

import javax.sql.DataSource;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;

public class DBManager {
	static DataSource ds = null;
 private DBManager() {
	 init();
 }
 
 private void init() {
	 Context init = null;
	 try {
		 init = new InitialContext();
		 ds = (DataSource) init.lookup("java:comp/env/jdbc/shop");
		 
	 }
	 catch (NamingException e) {e.printStackTrace();}
 }
 
 public static Connection get_DB_Connection() {
	 Connection conn = null;
	 
	 if(ds == null) {
		 new DBManager();
		 
	 }
	 try {
		 conn = ds.getConnection();
	 }
	 catch (SQLException e) {
		 e.printStackTrace();
	 }
	 
	 return conn;
 }
}
