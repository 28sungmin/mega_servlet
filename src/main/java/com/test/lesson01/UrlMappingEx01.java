package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UrlMappingEx01 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		// 테스트용 주석 추가
		// 임시 내용 추가
		
		// 한글 깨짐 방지 -> response header에 세팅
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/plain");
		
		// body
		PrintWriter out = response.getWriter();
		out.println("안녕하세요.");
		
		// 날짜
		Date now = new Date();
		out.println(now);
		
		// 날짜 formatter
		// 2024-11-25 오후 16:48:30
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-M-d a HH:mm:ss");
		out.println(sdf.format(now));
	}
}
