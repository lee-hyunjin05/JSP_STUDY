<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String info = application.getServerInfo();	//서버의 정보를 얻는 메소드 //아파치탐켓9.0
	int major = application.getMajorVersion();	//소숫점 위의 정보
	int minor = application.getMinorVersion();	//소숫점 아래의 정보
	String path = application.getRealPath("/");	
	
%>
	<h2>Application내장객체</h2>
	웹 컨테이너의 이름과 버전			 :	<%=info %><p>
		서블릿의 버전				 :	<%=major %>.<%=minor %><p>
	웹 어플리케이션 폴더의 로컬 시스템 검토	 :	<%=path %>
</body>
</html>