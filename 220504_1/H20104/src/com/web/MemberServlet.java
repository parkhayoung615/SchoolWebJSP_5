package com.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/member")
public class MemberServlet extends HttpServlet {
    public MemberServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.print("<html><head><title>Servlet Form 예제</title></head>");
		out.print("<body>");
		
		// 사용자 입력 정보 추출
		String id = request.getParameter("id");
		String password = request.getParameter("pwd");
		String name = request.getParameter("name");
		String[] hobbies = request.getParameterValues("hobby");
		String gender = request.getParameter("gender");
		String religion = request.getParameter("religion");
		String intro = request.getParameter("introduction");
		
		//응답 페이지 출력내용 작성
		out.print("Id : " + id + "<br>");
		out.print("비밀번호 : " + password + "<br>");
		out.print("이름 : " + name + "<br>");
		out.print("취미 : ");
		for (int i = 0; i < hobbies.length; i++) {
			out.print(hobbies[i] + " ");
		}
		out.print("<br>");
		out.print("성별 : " + gender + "<br>");
		out.print("종교 : " + religion + "<br>");
		out.print("소개 : " + intro + "<br>");
		
		out.print("</body></html>");
		out.close();
	}
	

}