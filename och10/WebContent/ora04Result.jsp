<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="och10.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Dept dept = (Dept)request.getAttribute("dept");
%>
<h2>Expression 부서정보</h2>
부서코드 : <%=dept.getDeptno() %><p>
부서명 : <%=dept.getDname() %><p>
근무지 : <%=dept.getLoc() %><p>

<h2>EL 표기법 부서정보</h2>
부서코드 : ${dept.getDeptno() }<p>
부서명 : ${dept.dname }<p>	<!-- el표기법이 그냥 변수를 읽어오는 것이 아니라 내부에 get set 처리해서 가져오는 -->
근무지 : ${dept.loc }<p>
</body>
</html>