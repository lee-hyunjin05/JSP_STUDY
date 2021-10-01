<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="frm" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<c:set var="date" value="<%= new Date() %>"></c:set>
<body>
	서울 : <frm:formatDate value="${date }" type="both"/><br>
<frm:timeZone value="Asia/Hong_Kong">
	홍콩 : <frm:formatDate value="${date }" type="both"/><br>
</frm:timeZone>
<frm:timeZone value="Europe/London">
	런던 : <frm:formatDate value="${date }" type="both"/><br>
</frm:timeZone>
<frm:timeZone value="America/New_yourk">
	뉴욕 : <frm:formatDate value="${date }" type="both"/><br>
</frm:timeZone>
</body>
</html>