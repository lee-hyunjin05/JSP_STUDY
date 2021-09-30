<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 	사이에 아무것도 쓸거 없으면 마지막에 / 넣어주면 뒤에 </~~> 이거 사라짐 -->
	<!-- 	Person person = new Person(); -->
	<jsp:useBean id="person" class="och08.Person" scope="request"/>
	<!--person.setName("홍길동"); -->
<!-- 	value값을 안주면 기본값으로 입력된 값으로 알아서 출력되는데 단 name이 같아야함 -->
	<jsp:setProperty property="name" 	name="person" param="name"/>
	<jsp:setProperty property="gender" 	name="person" value="남자"/>
	<jsp:setProperty property="age" 	name="person" value="23"/>
	
	<h2>인적사항</h2>
<!-- 	person.getName() -->
	이름 : <jsp:getProperty property="name"	 name="person"/><p>
	성별 : <jsp:getProperty property="gender" name="person"/><p>
	나이 : <jsp:getProperty property="age" 	 name="person"/><p>
	
</body>
</html>