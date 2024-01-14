package com.servlet.one;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/dlist.do")
public class DestinationListController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // HTTP GET 요청을 처리하는 메서드
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // DestinationDAO 객체 생성
        DestinationDAO rdao = new DestinationDAO();
        
        try {
            // 회원 목록 조회
            ArrayList<DestinationDTO> mList = rdao.selectDestinationList();
            
            System.out.println(mList);
            
            // 세션을 통해 조회한 회원 목록과 로그인 여부 정보를 저장
            HttpSession session = request.getSession();
            session.setAttribute("blist", mList);
            
            System.out.println("Data in session: " + session.getAttribute("blist"));
            
            // index 페이지로 이동
            if (!response.isCommitted()) {
                //RequestDispatcher dispatcher = request.getRequestDispatcher("/plist.do");
                //dispatcher.forward(request, response);
            }
            
        } catch (SQLException e) {
            // SQLException이 발생하면 콘솔에 에러 출력
            e.printStackTrace();
        }
    }

    // HTTP POST 요청을 처리하는 메서드 (doGet 메서드 호출)
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
