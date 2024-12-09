<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<!-- bootstrap CDN -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</head>
<body>
	<div class="container">
		<h1>회원가입</h1>
		
		<form method="post" action="/lesson03/insert_ex01">
			<div class="form-group">
				<label for="name">이름</label>	
				<input type="text" id="name" name="name" class="form-control col-5">
			</div>
			<div class="form-group">
				<label for="yyyymmdd">생년월일</label>	
				<input type="text" id="yyyymmdd" name="yyyymmdd" class="form-control col-5">
			</div>
			<div class="form-group">
				<label for="email">이메일</label>	
				<input type="text" id="email" name="email" class="form-control col-5">
			</div>
			<div class="form-group">
				<label for="introduce">자기소개</label>	
				<textarea id="introduce" name="introduce" class="form-control"></textarea>
			</div>
			<input type="submit" class="btn btn-info" value="회원가입">
		</form>
	</div>"
</body>
</html>