<%@page import="utill.MemberDao"%>
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
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	MemberDao md = new MemberDao();
	int result = md.check(id, password); 
	if(result == 1){
		session.setAttribute("id", id);
		response.sendRedirect("sessionMain.jsp");
	} else if(result == 0 ){
%>
		<script type="text/javascript">
			alert("암호가 틀려! 누구냐!");
			history.go(-1);
		</script>
<%	} else { %>
		<script type="text/javascript">
			alert("넌 누구냐! 20년간 군만두만 주고")
			historu.back();
		</script>
<%	}%>
</body>
</html>