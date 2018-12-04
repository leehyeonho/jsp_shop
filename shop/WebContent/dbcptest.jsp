<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.naming.Context"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	Connection conn = null;

	try {
		/* Context init = new InitialContext();
		Context env = (Context) init.lookup("java:comp/env");
		DataSource ds = (DataSource) env.lookup("jdbc/orcl");
		conn = ds.getConnection(); */
		
		Context context = new InitialContext();
		DataSource ds = (DataSource) context.lookup("java:comp/env/jdbc/shop");
		conn = ds.getConnection();
		out.println("커넥션풀 연결 성공");
	} catch (Exception e) {
		out.println("커넥션풀 연결 실패");
		e.printStackTrace();
	}
%>