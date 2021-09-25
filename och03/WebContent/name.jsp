<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>		<!--   지시자(directive) -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%	//스트림틀릿
		String name = request.getParameter("name");
		String addr = request.getParameter("addr");
	%>
	<h1><%=name %>님 <%=addr %>에 사네</h1> <!-- 익스프레션 -->
</body>
</html>