<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>노래 리스트</title>
<!-- bootstrap CDN -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
<style>
	a:hover {
		text-decoration: none;
	}
	
	header {
		height: 100px;
	}
	
	.search {
		width: 500px;
		height:45px; 
	}
	.search > input {
		border-radius: .4rem 0 0 .4rem;
	}
	.search > button {
		width: 70px;
		border-radius: 0 .4rem .4rem 0;
	}
	
	.menu {
		height: 60px;
	}
	
	.singer {
		height: 250px;
	}
	
	footer {
		height: 50px;
	}
</style>
</head>
<body>
<%
// 아티스트 정보 

    Map<String, Object> artistInfo = new HashMap<>();
    artistInfo.put("name", "아이유");
    artistInfo.put("debute", 2008);
    artistInfo.put("agency", "EDAM엔터테인먼트");
    artistInfo.put("photo", "http://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/867/444/81867444_1616662460652_1_600x600.JPG");


// 아이유 노래 리스트 
    List<Map<String, Object>> musicList = new ArrayList<>();

    Map<String, Object> musicInfo = new HashMap<>();
    musicInfo.put("id", 1);
    musicInfo.put("title", "팔레트");
    musicInfo.put("album", "Palette");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
    musicInfo.put("time", 217);
    musicInfo.put("composer", "아이유");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 2);
    musicInfo.put("title", "좋은날");
    musicInfo.put("album", "Real");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/3/3c/IU_-_Real.jpg");
    musicInfo.put("time", 233);
    musicInfo.put("composer", "이민수");
    musicInfo.put("lyricist", "김이나");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 3);
    musicInfo.put("title", "밤편지");
    musicInfo.put("album", "palette");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
    musicInfo.put("time", 253);
    musicInfo.put("composer", "제휘,김희원");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 4);
    musicInfo.put("title", "삐삐");
    musicInfo.put("album", "삐삐");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/111/535/81111535_1539157728291_1_600x600.JPG");
    musicInfo.put("time", 194);
    musicInfo.put("composer", "이종훈");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 5);
    musicInfo.put("title", "스물셋");
    musicInfo.put("album", "CHAT-SHIRE");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/080/724/877/80724877_1445520704274_1_600x600.JPG");
    musicInfo.put("time", 194);
    musicInfo.put("composer", "아이유,이종훈,이채규");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 6);
    musicInfo.put("title", "Blueming");
    musicInfo.put("album", "Love poem");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/6/65/%EC%95%84%EC%9D%B4%EC%9C%A0_-_Love_poem.jpg");
    musicInfo.put("time", 217);
    musicInfo.put("composer", "아이유,이종훈,이채규");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);
%>
	<div class="container">
		<header class="d-flex align-items-center">
			<h3 class="mb-0 mr-5">
				<a href="/lesson02/quiz10_input.jsp" class="text-success">Melong</a>
			</h3>
			<form method="get" action="quiz10_result.jsp">
				<div class="search d-flex align-itmes-center">
					<input type="text" name="keyword" class="form-control h-100">
					<button type="submit" class="btn btn-info">검색</button>
				</div>
			</form>			
		</header>
		<nav class="menu d-flex align-items-center">
		    <ul class="nav nav-fill font-weight-bold ml-3">
		        <li class="nav-item"><a href="#" class="nav-link text-dark">멜롱챠트</a></li>
		        <li class="nav-item"><a href="#" class="nav-link text-dark">최신음악</a></li>
		        <li class="nav-item"><a href="#" class="nav-link text-dark">장르음악</a></li>
		        <li class="nav-item"><a href="#" class="nav-link text-dark">멜롱DJ</a></li>
		        <li class="nav-item"><a href="#" class="nav-link text-dark">뮤직어워드</a></li>
		    </ul>
		</nav>
		<section class="contents">
			<section class="singer d-flex border border-success">
				<div class="d-flex align-items-center ml-3">
					<img src="<%= artistInfo.get("photo") %>" alt="아이유 사진" height="210">
				</div>
				<div class="mt-3 ml-3">
					<h3><%= artistInfo.get("name") %></h3>
					<div><%= artistInfo.get("agency") %></div>
					<div><%= artistInfo.get("debute") %> 데뷔</div>
				</div>
			</section>
			<section class="music mt-3">
				<h4>곡 목록</h4>
				<table class="table text-center">
					<thead>
						<tr>
							<th>no</th>
							<th>제목</th>
							<th>앨범</th>
						</tr>
					</thead>
					<tbody>
					<%
						for (Map<String, Object> music : musicList){
					%>
						<tr>
							<td><%= music.get("id") %></td>
							<td><a href="/lesson02/quiz10_result.jsp?id=<%= music.get("id") %>"><%= music.get("title") %></a></td>
							<td><%= music.get("album") %></td>
						</tr>
					<%
						}
					%>
					</tbody>
				</table>
			</section>
		</section>
		<hr />
		<footer>
			<small class="ml-3 text-secondary">Copyright 2024. melong All Rights Reserved.</small>
		</footer>
	</div>
</body>
</html>