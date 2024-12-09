package com.test.lesson03;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson03/insert_quiz02")
public class InsertQuiz02 extends HttpServlet{
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		
		// response header 세팅 생략(Redirect할 것이기 때문)
		
		// requestParams
		String name = request.getParameter("name");
		String url = request.getParameter("url");
		
		// DB 접속
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		// insert
		String insertQuery = "insert into `bookmark`"
				+ "(`name`, `url`)"
				+ "values"
				+ "('" + name + "', '" + url + "')";
		
		try {
			ms.update(insertQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		// DB 접속 해제
		ms.disconnect();
		
		// 유저 목록 페이지로 redirect(302)
		response.sendRedirect("/lesson03/quiz02_site.jsp");
	}
}
