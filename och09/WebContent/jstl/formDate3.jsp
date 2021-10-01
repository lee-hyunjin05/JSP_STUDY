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
<c:set var="date" value="<%=new Date() %>"></c:set>
<body>														<!-- E : 요일, a : AM, PM -->
날짜	:	<frm:formatDate value="${date }" type="date" pattern="YYYY/MM/dd (E)"/><p>
시간	:	<frm:formatDate value="${date }" type="time" pattern="hh:mm:ss (a)"/>
</body>
</html>