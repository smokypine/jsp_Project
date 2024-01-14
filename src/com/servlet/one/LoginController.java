package com.servlet.one;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/login.do")
public class LoginController extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String id = request.getParameter("id");
        String pw = request.getParameter("password");

        MemberDAO mDao = new MemberDAO();        
        boolean loginCheck = mDao.loginCheck(id, pw);

        if (loginCheck) {
            request.setAttribute("loginResult", loginCheck);
            HttpSession session = request.getSession();
            
    	    // MemberDAO 객체 생성
    	    MemberDAO memberDAO = new MemberDAO();

    	    // MemberDAO에서 새로 추가한 메서드 호출
    	    MemberDTO member = memberDAO.getMemberByIdAndPassword(id, pw);

            session.setAttribute("getUsercode", member.getUsercode());
            session.setAttribute("idKey", id);

         // Array of next URIs in sequential order
            /*
             String[] nextUris = {"/list.do", "/dlist.do", "/plist.do", "/rlist.do"};

            // Perform sequential redirects
            for (String nextUri : nextUris) {
                response.sendRedirect(request.getContextPath() + nextUri);
                return;  // 중요: 이미 응답이 커밋된 후에는 더 이상 forward 또는 redirect를 수행할 수 없으므로 메소드를 종료합니다.
            }
             * */
            // index 페이지로 이동
            if (!response.isCommitted()) {
                RequestDispatcher dispatcher = request.getRequestDispatcher("./index.jsp");
                dispatcher.forward(request, response);
            }
            
        } else {
            response.sendRedirect("manager_Page/LogError.jsp");
        }
    }
}