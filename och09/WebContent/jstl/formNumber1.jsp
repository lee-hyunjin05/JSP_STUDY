<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="frm" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<frm:formatNumber value="10000" groupingUsed="true"/><br>	<!-- 3자리로 , 찍어줌 -->
<frm:formatNumber value="3.1415923" pattern="#.###"/><br>	<!-- 마지막자리 반올림 -->
<frm:formatNumber value="3.1" pattern="#.##"/><br>	<!-- 없으면 없는대로 -->
<frm:formatNumber value="3.1" pattern="#.00"/><br>	ㅜ<!-- 있으면 있는건 보여주고 없는건 0 -->
<frm:formatNumber value="121434323453" pattern="##,###.00"/><br>	<!-- 뒷자리가 3개로 끊어서 ,로 보여주고 맨 마지막에 .00 -->
<frm:formatNumber value="250000" type="currency" currencySymbol="\$"/><br>	<!-- \ : 뒤에 특수기호가 나온다는것을 알려줌 : $로 표기하면서 세자리마다 , 자동 표시 -->
<frm:formatNumber value="0.75" type="percent"/><br>	<!-- 퍼센트로 보여줌 -->
</body>
</html>