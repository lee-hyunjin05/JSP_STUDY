<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="och10.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	tr:hover { background-color: red;}
</style>
</head>
<body>

<table width = "100%" bgcolor = "yellow" border = "1">
	<tr bgcolor = "pink">
		<th>부서코드</th>
		<th>부서명</th>
		<th></th>
	</tr>

<c:forEach var="dept" items = "${al }">
	<tr><td>${dept.deptno }</td>
		<td>${dept.dname }</td>
		<td>${dept.loc }</td></tr>
</c:forEach>

</table>
</body>
</html>