<%@page import="och12.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="error.jsp"%>
<%@ include file="memberCheck.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title></head><body>
<%
	String passwd = request.getParameter("passwd");
	MemberDao md  = MemberDao.getInstance();
	System.out.println("DeletePro   id->"+id);
	int result    = md.delete(id, passwd); 
	if (result == 1) {
		session.invalidate(); 
%>
	<script type="text/javascript">
		alert("탈퇴되었습니다. 잘 해 보세요  ?"); 
		location.href="main.jsp";
	</script>
<%	}	if (result==0) { %>
	<script type="text/javascript">
		alert("암호 똑바로 입력해?"); 
		history.go(-1);
	</script>
<%  } else { %>
	<script type="text/javascript">
		alert("헐 에러?"); 
		history.go(-1);
	</script>
<% } %>
</body>
</html>