<%@page import="och10.Dept"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="dBError" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@127.0.0.1:1521:xe";
	String sql = "select * from dept";
	
	ArrayList<Dept> al = new ArrayList<Dept>();
	Class.forName(driver);
	Connection conn = DriverManager.getConnection(url, "scott", "tiger");
	Statement stmt = conn.createStatement();
	
	ResultSet rs = stmt.executeQuery(sql);
	if(rs.next()){
		do{
			Dept dept = new Dept();
			dept.setDeptno(rs.getInt(1));
			dept.setDname(rs.getString(2));
			dept.setLoc(rs.getString(3));
			al.add(dept);
		}while(rs.next());
		request.setAttribute("al", al);
		rs.close();
		stmt.close();
		conn.close();
		RequestDispatcher rd = request.getRequestDispatcher("oraDresult.jsp"); 
		rd.forward(request, response);
	} else{
		out.println("데이터가 없습니다.");
		stmt.close();
		conn.close();
	}
%>
</body>
</html>