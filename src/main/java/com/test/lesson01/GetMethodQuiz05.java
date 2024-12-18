package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz05")
public class GetMethodQuiz05 extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// response header
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		// request parameter 꺼내기
		int number = Integer.parseInt(request.getParameter("number"));
		
		// 출력
		PrintWriter out = response.getWriter();
		out.print("<html><head><title>");
		out.print(number + "단</title></head><body><ul>");

		for (int i = 1; i <= 9; i++) {
			out.println("<li>" + number + " X " + i + " = " + (number * i) + "</li>");
		}
		out.print("</ul></body></html>");
	}
}
