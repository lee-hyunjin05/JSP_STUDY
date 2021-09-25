<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
cal.jsp 페이지
<%
	int num1 = Integer.parseInt(request.getParameter("num1"));
	int num2 = Integer.parseInt(request.getParameter("num2"));
	int add = num1 + num2;
	int min = num1 - num2;
	int mul = num1 * num2;
	int div = num1 / num2;	//연산
	request.setAttribute("add", add);
	request.setAttribute("min", min);
	request.setAttribute("mul", mul);
	request.setAttribute("div", div);	//연산식 저장
	RequestDispatcher rd = request.getRequestDispatcher("calReasult.jsp");	//페이지 지정  rd : 페이지가 이동할 때 쓰는 객체 : 이동하는데 저장한 변수를 가지고 이동한다
	//rd.include(request, response);	//calRe~의 페이지를 인클루드해서 결과 보여주는 가져와서 
	rd.forward(request, response);	//calRe~~의 페이지로 이동해서 결과 보여주는
%>
</body>
</html>