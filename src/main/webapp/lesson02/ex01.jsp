<%@page import="java.util.*" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ex01</title>
</head>
<body>
	<h1>Ex01</h1>
	
	<!-- HTML의 주석: 소스보기에서 보인다. -->
	<%-- jsp 주석: 소스보기에서 보이지 않는다. => 해석이 이미 끝난 상태이기 때문에 --%>
	
	<%
		// 여기서부터 자바 구간
		// scriptlet
		int sum = 0;
		for (int i = 1; i <= 10; i++) {
			sum += i;
		}
	%>
	
	<b>합계:</b>
	<input type="text" value="<%=sum %>">
	<br />
	
	<%!
		// 선언문: 마치 클래스를 정의하는 느낌(클래스 같은 느낌 => 필드, 메소드로 구성되어 있는)
		
		// 필드
		int num = 150;
		
		// 메소드
		String getHelloWorld() {
			return "Hello world!";
		}
	%>
	
	<%= getHelloWorld() %>
	<br />
	<%= num + 230%>
	
	<%
		List<String> list = new ArrayList<>();
	%>
</body>
</html>