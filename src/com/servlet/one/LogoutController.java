package com.servlet.one;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/logout.do")
public class LogoutController extends HttpServlet {
	
	// HTTP GET 요청이 들어올 때 호출되는 메서드
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 현재 세션 무효화
		HttpSession session = request.getSession();
		session.invalidate();
		
		// Index 페이지로 이동
		response.sendRedirect(request.getContextPath() + "/index.jsp"); //이렇게 하면 Index.jsp로 리다이렉션이 이루어진다
	}
}