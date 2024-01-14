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

@WebServlet("/ReservationChangeController")
public class ReservationChangeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 한글 인코딩 설정
		request.setCharacterEncoding("UTF-8");
		
		// 요청 파라미터 받아오기
		String rvcodeString = request.getParameter("rvcode");
		String usercodeString = request.getParameter("usercode");
		String id = request.getParameter("id");
		String dscodeString = request.getParameter("dscode");//문자열로 받음
		String prmcodeString = request.getParameter("prmcode");
		String fipriceString = request.getParameter("fiprice");
		String date = request.getParameter("date");
	

		// DestinationDTO 객체 생성 및 설정
		ReservationDTO rDto = new ReservationDTO();
		//code 값을 int로 변환
		int rvcode = 0;
		int usercode = 0;
		int dscode = 0;
		int prmcode = 0;
		int fiprice = 0;
		
		try {
			rvcode = Integer.parseInt(rvcodeString);
			usercode = Integer.parseInt(usercodeString);
			dscode = Integer.parseInt(dscodeString); // 문자열을 int로 변환
			prmcode = Integer.parseInt(prmcodeString); // 문자열을 int로 변환
			fiprice = Integer.parseInt(fipriceString); // 문자열을 int로 변환
			rDto.setRvCode(rvcode);
			rDto.setUserCode(usercode);
			rDto.setDsCode(dscode);
			rDto.setPrmCode(prmcode);
			rDto.setFiPrice(fiprice);
		}catch (NumberFormatException e) {
		    // ageString이 정수로 변환되지 않을 경우 처리할 예외 처리 코드
		    e.printStackTrace(); // 또는 다른 로깅 또는 예외 처리 방법을 선택
		}
		rDto.setId(id);
		rDto.setDate(date);
		
		System.out.println("ReservationController DOGET");
		System.out.println("rvcode: " + rvcode);
		System.out.println("usercode: " + usercode);
		System.out.println("id" + id);
		System.out.println("dscode: " + dscode);
        System.out.println("prmcode: " + prmcode);
        System.out.println("fiprice: " + fiprice);
        System.out.println("date: " + date);
        
     // PromotionDAO 객체 생성
 		ReservationDAO rDao = new ReservationDAO();	

        // 회원 수정 결과 확인
        boolean updateCheck = rDao.reservationUpdateManager(rDto);
        
     // 추가된 로깅 부분
        System.out.println("reservation Update Result: " + updateCheck);
        
        if (updateCheck) {
            // 회원 수정 성공 시, 다시 MemberList.jsp로 이동
            ArrayList<ReservationDTO> reservationList;
			try {
				reservationList = rDao.selectReservationList();
				request.setAttribute("reservationList", reservationList);
	            RequestDispatcher dispatcher = request.getRequestDispatcher("./ReservationList.jsp");
	            dispatcher.forward(request, response);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
        } else {
            // 여행지 수정 실패 시, 어떠한 처리를 수행 (예: 에러 페이지로 리다이렉트)
            response.sendRedirect("/error.jsp");
        }
    }
	
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 한글 인코딩 설정
	    request.setCharacterEncoding("UTF-8");
	    
	 // 요청 파라미터 받아오기
 		String rvcodeString = request.getParameter("rvcode");//문자열로 받음
 		
 		//code 값을 int로 변환
		int rvcode = 0;
		try {
			rvcode = Integer.parseInt(rvcodeString); // 문자열을 int로 변환

		}catch (NumberFormatException e) {
		    // ageString이 정수로 변환되지 않을 경우 처리할 예외 처리 코드
		    e.printStackTrace(); // 또는 다른 로깅 또는 예외 처리 방법을 선택
		}

	    // destinationDAO 객체 생성
	    ReservationDAO reservationDAO = new ReservationDAO();

	    // MemberDAO에서 새로 추가한 메서드 호출
	    ReservationDTO reservation = reservationDAO.getReservationByRvCode(rvcode);
	    //HttpSession session = request.getSession();
        //session.setAttribute("writedscode", dscode);

	    if (reservation != null) {
	        // 회원 정보가 존재할 경우, 해당 정보를 request에 저장하여 JSP로 전달
	        request.setAttribute("reservation", reservation);

	        // 여기에서 필요한 JSP 페이지로 포워딩
	        RequestDispatcher dispatcher = request.getRequestDispatcher("./ReservationInfo.jsp");
	        dispatcher.forward(request, response);
	    } else {
	        // 회원 정보가 없을 경우에 대한 처리
	        // 예를 들어, 에러 메시지를 설정하거나 다른 작업 수행 가능
	        response.getWriter().write("해당 여행지 정보가 존재하지 않습니다.");
	    }
	}

}
