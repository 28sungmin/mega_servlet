<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홍당무 마켓</title>
<!-- bootstrap CDN -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
<style>
	header {
		height: 80px;
	}
	.menu {
	}
	.contents {
		height: 1000px;
	}
	footer {
		height: 80px;
	}
</style>
</head>
<body>
<%
	// DB 연결
	MysqlService ms = MysqlService.getInstance();
	ms.connect();
	
	// select
	String selectQuery = "select A.*, B.*" +
			"from seller AS A " +
			"join used_goods AS B " +
			"on A.id = B.sellerId;";
			
	ResultSet result = ms.select(selectQuery);
%>
	<div class="container bg-secondary">
		<header class="bg-info text-white">
			<h1>HONG당무 마켓</h1>
		</header>
		<nav class="menu bg-light">
			<ul class="nav nav-fill font-weight-bold">
				<li class="nav-item"><a href="#" class="nav-link text-white">리스트</a></li>
                <li class="nav-item"><a href="#" class="nav-link text-white">물건 올리기</a></li>
                <li class="nav-item"><a href="#" class="nav-link text-white">마이 페이지</a></li>
            </ul>
        </nav>
        <section class="contents bg-primary d-flex">
        	<div class="row bg-warning">
<%-- 	        <%
	        	while (result.next()) {
	        %>
        		<div class="col-6 col-sm-4 bg-success">
	        		<div>
	        			<img src="<%= result.getString("profileImageUrl") %>" alt="물건 이미지">
	        		</div>
	        		<h4><%= result.getString("title") %></h4>
	        		<div><%= result.getString("price") %></div>
	        		<div><%= result.getString("nickname") %></div>
        		</div>
	        <%
	        	}
	        %> --%>
	             <div class="col-6 col-sm-4 bg-success">
	        		<div>
	        			<img src="" alt="물건 이미지">
	        		</div>
	        		<h4></h4>
	        		<div></div>
	        		<div></div>
        		</div>
        	</div>
        </section>
        <footer class="bg-light">
        	Copyright 2024. HONG All Rights Reserved.
        </footer>
	</div>
</body>
</html>