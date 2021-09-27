<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<% response.setStatus(200); %>	<!-- 에러페이지를 처리해주는 애지만 에러는 아니란걸 보여쥬기 위해 200이것도 같이 입력하는건데 얘 없어도 돌아가긴 하는데 웅앵 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>공지</h2>
더 나은 서비스를 위해서 준비중 입니다.<p>
메세지 : <%=exception.getMessage() %><br>
클래스 : <%=exception.getClass() %>
</body>
</html>	