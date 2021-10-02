<%@page import="utill.MemberDto"%>
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
	String chk = "";
	String agree = request.getParameter("agree");
	
	if(agree.equals("y")){
		
		String id = (String)session.getAttribute("password");
		String password = (String)session.getAttribute("password");
		String name = (String)session.getAttribute("name");
		
		MemberDao md = new MemberDao();
		MemberDto member = new MemberDto();
		
		member.setId(id);
		member.setName(name);
		member.setPassword(password);
		
		int result = md.insert(member); 
		
		if (result > 0){	chk = "success";	}
		else {	chk = "fail";	}
	
	}else {
			chk = "agree no";
		}

	session.invalidate();
	out.println("invalidate() 적응 후에도"+session.getId()+"<br>");	//세션이 끝난 후에도 잠시동안 데이터 남아잇다는데 먼소릴까
	response.sendRedirect("result.jsp?chk="+chk);
	
%>
</body>
</html>