<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 향상된 for문하고 똑같다ㅣ -->
<c:forEach var="col" items="${color }">
	<font color="${col }">야호</font>
</c:forEach>
</body>
</html>