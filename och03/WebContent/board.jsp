<%@page import="java.io.FileWriter"%>
<%@page import="java.util.Date"%>
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
	request.setCharacterEncoding("utf-8"); //이미 위에서 해줫으니까 없어도 되는데 해주세요 혹시 모르니까
	String title = request.getParameter("title");
	String writer = request.getParameter("title");
	String content = request.getParameter("content");
	
	String msg = "제목 : " +title+"\r\n";
	msg += "작성자 : " +writer+ "\r\n";
	msg += "내용 : " +content+ "\r\n";
	Date date = new Date();
	long fileName = date.getTime();	//파일 이름을 시간으로 받아서 계속 변함
	String real = application.getRealPath("/WEB-INF/out/"+fileName+".txt"); //파일 여기에 저장할 꺼
	System.out.println(real);	//개발자만 볼 수 있음 뇨내 어디에 저장 되는지 확인하려고 일부러 콘솔화면에 띄워준거
	FileWriter fw = new FileWriter(real);
	
	fw.write(msg);
	fw.close();
	
	out.println("제목 : "+title+"<br>");
	out.println("작성자 : "+writer+"<br>");
	out.println("내용 : "+content+"<br>");
%>
<h3>
	제목 : <%=title %><br>
	작성자 : <%=writer %><br>
	내용 : <%=content %>
</h3>
</body>
</html>