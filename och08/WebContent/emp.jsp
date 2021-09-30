<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>								<!-- 범위 : 요청하는 곳 까지 끝까지 가라? 무애ㅑ야호
											request : 요청한 범위까지 끝까지 쫓아가서 데이터 처리 
											page : 이 ㅠㅔ이지 안에서만, 범위 쫍아서 잘 안씀
											session : 이거 나중에 쓰긴 할건데 얘랑 reqest를 잘 씀
											application : 제일 큰 단위임-->
<jsp:useBean id="emp" class = "och08.Emp" scope="request"></jsp:useBean>

<%-- <jsp:setProperty property="empno" name="emp"/> --%>
<%-- <jsp:setProperty property="ename" name="emp"/> --%>
<%-- <jsp:setProperty property="job"	name="emp"/> --%>
<%-- <jsp:setProperty property="sal" name="emp"/> --%>
<%-- <jsp:setProperty property="hiredate" name="emp"/> --%>

<!-- * : 한번에 넘어간다 단 html과 bean의 필드명이 동일해야함 -->
<jsp:setProperty property="*" name="emp"/>

<jsp:forward page="empresult.jsp"></jsp:forward>
</body>
</html>