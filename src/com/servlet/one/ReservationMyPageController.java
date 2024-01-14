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

@WebServlet("/ReservationMyPageController")
public class ReservationMyPageController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // 한글 인코딩 설정
        request.setCharacterEncoding("UTF-8");

        // 요청 파라미터 받아오기
        String id = request.getParameter("id");// 문자열로 받음

        // reservationDAO 객체 생성
        ReservationDAO reservationDAO = new ReservationDAO();

        // ReservationDAO에서 새로 추가한 메서드 호출
        ArrayList<ReservationDTO> reservationList = null;
		try {
			reservationList = reservationDAO.getReservationListById(id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

        if (reservationList != null && !reservationList.isEmpty()) {
            // 예약 정보가 존재할 경우, 해당 정보를 request에 저장하여 JSP로 전달
            request.setAttribute("reservationList", reservationList);

            // 여기에서 필요한 JSP 페이지로 포워딩
            RequestDispatcher dispatcher = request.getRequestDispatcher("./MyPage_ReservationList.jsp");
            dispatcher.forward(request, response);
        } else {
            // 예약 정보가 없을 경우에 대한 처리
            // 예를 들어, 에러 메시지를 설정하거나 다른 작업 수행 가능
            response.getWriter().write("해당 예약 정보가 존재하지 않습니다.");
        }
    }
}
