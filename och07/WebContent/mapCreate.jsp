<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	HashMap<String, String> map = new HashMap<String, String>();
	map.put("Park", "목등");
	map.put("박", "이대");
	map.put("Jasica", "크라이스 처치");
	map.put("Susan", "시드니");
	request.setAttribute("ADDRESS", map);
	RequestDispatcher dispatcher = 		 // ? : 로 파라메타 추가 : formd에서 get넘겨준거랑 동일, 같은 효과 > 그래서 ${parm.~~}로 받아야함
			request.getRequestDispatcher("mapView.jsp?NAME=Park");
	dispatcher.forward(request, response);
%>
</body>
</html>