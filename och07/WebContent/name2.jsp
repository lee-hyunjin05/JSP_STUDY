<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 받아 올 파라메타 값이 비어있으면 ? "손님" :(아니면) 받아온 파라메타값  -->
	${empty param.name ? "손" : param.name }님 안녕하세요!
</body>
</html>