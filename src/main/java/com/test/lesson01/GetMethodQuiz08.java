package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz08")
public class GetMethodQuiz08 extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// response header
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		// request param
		String check = request.getParameter("check");
		
		// list
		List<String> list = new ArrayList<>(Arrays.asList(
		        "강남역 최고 맛집 소개 합니다.", 
		        "오늘 기분 좋은 일이 있었네요.", 
		        "역시 맛집 데이트가 제일 좋네요.", 
		        "집에 가는 길에 동네 맛집 가서 안주 사갑니다.",
		        "자축 저 오늘 생일 이에요."));
		
		// 반복문 순회, 출력
		PrintWriter out = response.getWriter();
		
		out.print("<html><head><title>검색 결과</title></head><body>");
//		for (int i = 0; i < list.size(); i++) {
//			if (list.get(i).contains(check)) {
//				// 방법1)
//				out.print(list.get(i).replace(check, "<b>" + check + "</b>") + "<br />");				
//				
//				// 나의 방법2)
//				String bold = "<b>" + check + "</b>";
//				String[] sentences = list.get(i).split(" ");
//				List<String> sentences = new ArrayList<>(Arrays.asList(list.get(i).split(" ")));
//				out.print(sentences);
//				for (int j = 0; j < sentences.length; j++) {
//					if (sentences[j].equals(check)) {
//						out.print(bold + " ");
//						continue;
//					}
//					out.print(sentences[j] + " ");
//				}
//				out.print("<br />");	
//			}
//		}
		
		// 선생님 풀이
		// 향상된 for문
		for (String text : list) {
			if (text.contains(check)) {
				// 방법1)
//				out.print(text.replace(check, "<b>" + check + "</b>") + "<br />");		
				
				// 선생님 방법2) split => 기준은 check : 아직은 완벽한 방법은 아님
				String[] words = text.split(check);
				out.print(words[0] + "<b>" + check + "</b>" + words[1] + "<br />");
				
				// 방법3) c언어처럼 indexOf()를 생각하기 => 좋은 방법은 아님
				// check의 시작 인덱스를 찾아서 check의 length만큼 찾아내는 방법
			}
		}
		out.print("</body></html>");
	}
}