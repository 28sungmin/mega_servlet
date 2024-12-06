<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>곡 정보</title>
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
	
	.information {
		height: 250px;
	}
	
	.lyrics {
		height: 120px;
	}
	footer {
		height: 50px;
	}
	
	.music-info {
		color: #999;
		font-size: 12px;'
	}
</style>
</head>
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
<body>
	<div class="container">
		<header class="d-flex align-items-center">
			<h3 class="mb-0 mr-5">
				<a href="/lesson02/quiz10_input.jsp" class="text-success">Melong</a>
			</h3>			
			<form method="get" action="quiz10_result.jsp">
				<div class="search d-flex align-itmes-center">
					<%
						String keyword = request.getParameter("keyword");
						if (keyword == null) {
							keyword = "";
						}
					%>
					<input type="text" name="keyword" class="form-control h-100" value="<%= keyword %>">
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
			<h4 class="font-weight-bold mt-1">곡 정보</h4>
			<section class="information d-flex border border-success">
				<%
					// request param
					String id = request.getParameter("id");
					int idInt = 0;
					if (id != null) {
						idInt = Integer.parseInt(request.getParameter("id")); 
					}
					
					// keyword가 null이면 id가 !null
					// keyword가 !null이면 id가 null
					for (Map<String, Object> music : musicList) {
						boolean okayKeyword = false;
						if (keyword != null) {
							okayKeyword = keyword.equals(music.get("title"));
						}
						if (okayKeyword == true || music.get("id").equals(idInt)) {	
							int time = (int)music.get("time");
							int m = time / 60;
							int s = time % 60;
				%>
				<div class="d-flex align-items-center ml-3">
					<img src="<%= music.get("thumbnail") %>" alt="곡 사진" height="210">
				</div>
				<div class="details mt-3 ml-3">
					<div class="display-4"><%= music.get("title") %></div>
					<div class="text-success font-weight-bold mb-2"><%= music.get("singer") %></div>
					<div class="music-info d-flex">
						<div>
							<div>앨범</div>	
							<div>재생시간</div>	
							<div>작곡가</div>	
							<div>작사가</div>	
						</div>
						<div class="ml-4">
							<div><%= music.get("album") %></div>
							<div class="text-dark"><%= m %> : <%= s %></div>
							<div><%= music.get("lyricist") %></div>
							<div><%= music.get("composer") %></div>
						</div>
					</div>
				</div>
				<%
						}
					}
				%>
			</section>
			<section class="lyrics mt-5">
				<h4>가사</h4>
				<hr />
				<p>가사 정보 없음</p>
			</section>
		</section>
		<hr />
		<footer>
			<small class="ml-3 text-secondary">Copyright 2024. melong All Rights Reserved.</small>
		</footer>
	</div>
</body>
</html>