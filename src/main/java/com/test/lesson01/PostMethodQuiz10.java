package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz10")
public class PostMethodQuiz10 extends HttpServlet{
	
	// public static final이라고 있어도 됨.
	private final Map<String, String> userMap =  new HashMap<String, String>() {
		// {}으로 되어있으면 단건(한 사람에 대한 내용만 들어있음)
		// []으로 되어있으면 여러건(여러 사람들에 대한 내용만 들어있음)
	    {
	        put("id", "marobiana");
	        put("password", "qwerty1234");
	        put("name", "신보람");
	    }
	};
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		// response header
		response.setContentType("text/html");
		
		// request params
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		
		// 출력
		PrintWriter out = response.getWriter();
		
		out.print("<html><head><title>로그인</title></head><body>");
		if (userMap.get("id").equals(id) == false) {
			out.print("id가 일치하지 않습니다.");
		} else if (userMap.get("password").equals(password) == false) {
			out.print("password가 일치하지 않습니다.");
		} else {
			out.print(userMap.get("name") + "님 환영합니다!");
		}
		out.print("</body></html>");
	}

}
