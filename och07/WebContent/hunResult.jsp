<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>1부터 100까지의 합</h1>
<%
	String sum = request.getAttribute("sum").toString();
	out.println("Expression : "+sum+"<br>");
%>
<%-- 	Expression : <%=sum %> --%>
	Expression Language : ${sum1 }
</body>
</html>