<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz02_result</title>
<!-- bootstrap CDN -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</head>
<body>
	<%
		Date allDate = new Date();
		String type = request.getParameter("type");

		SimpleDateFormat sdf = null; // stack에 있는 공간
		
		if (type.equals("time")) {
			// new를 하면 heap에 생김
			sdf = new SimpleDateFormat("현재 시간은 HH시 mm분 ss초 입니다.");
		} else {
			sdf = new SimpleDateFormat("현재 날짜는 yyyy년 M월 d일 입니다."); 		
		}
		String result = sdf.format(allDate);
		
		// 방법2) 메모리 낭비가 있을 수는 있지만, 나중에 garbage collector(?)가 수거할 수 있다.
/* 		Date allDate = new Date();
		String type = request.getParameter("type");

		SimpleDateFormat sdf = new SimpleDateFormat("현재 시간은 HH시 mm분 ss초 입니다.");
		
		if (type.equals("date")) {
			sdf = new SimpleDateFormat("현재 날짜는 yyyy년 M월 d일 입니다."); 		
		}
		String result = sdf.format(allDate); */

	%>
	<div class="container">
		<div class="display-3"><%= result %></div>
	</div>
</body>
</html>