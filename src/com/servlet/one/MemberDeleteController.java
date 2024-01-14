package com.servlet.one;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/MemberDeleteController")
public class MemberDeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // 한글 인코딩 설정
        request.setCharacterEncoding("UTF-8");

        // 요청 파라미터 받아오기
        String id = request.getParameter("id");
        String password = request.getParameter("password");
        System.out.println("ID: " + id);
        System.out.println("Password: " + password);

        // MemberDAO 객체 생성
        MemberDAO memberDAO = new MemberDAO();

        // 회원 정보 삭제
        boolean isDeleted = memberDAO.deleteMember(id, password);

        if (isDeleted) {
            // 삭제 성공 시
            response.getWriter().write("success");
        } else {
            // 삭제 실패 시
            response.getWriter().write("fail");
        }
    }
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    // 한글 인코딩 설정
	    request.setCharacterEncoding("UTF-8");

	    // 요청 파라미터 받아오기
	    String id = request.getParameter("id");
	    String password = request.getParameter("password");


	    // MemberDAO 객체 생성
	    MemberDAO memberDAO = new MemberDAO();

	    // MemberDAO에서 새로 추가한 메서드 호출
	    MemberDTO member = memberDAO.getMemberByIdAndPassword(id, password);
	    HttpSession session = request.getSession();
        session.setAttribute("writeid", id);

	    if (member != null) {
	        // 회원 정보가 존재할 경우, 해당 정보를 request에 저장하여 JSP로 전달
	        request.setAttribute("member", member);

	        // 여기에서 필요한 JSP 페이지로 포워딩
	        RequestDispatcher dispatcher = request.getRequestDispatcher("./MemberInfo.jsp");
	        dispatcher.forward(request, response);
	    } else {
	        // 회원 정보가 없을 경우에 대한 처리
	        // 예를 들어, 에러 메시지를 설정하거나 다른 작업 수행 가능
	        response.getWriter().write("해당 회원 정보가 존재하지 않습니다.");
	    }
	}
}
