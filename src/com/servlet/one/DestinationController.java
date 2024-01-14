package com.servlet.one;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/DestinationController")
public class DestinationController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 한글 인코딩 설정
		request.setCharacterEncoding("UTF-8");
		
		// 요청 파라미터 받아오기
		String dsname = request.getParameter("dsname");
		String dsdetail = request.getParameter("dsdetail");
		String priceString = request.getParameter("price");//문자열로 받음
		String type = request.getParameter("type");

		// DestinationDTO 객체 생성 및 설정
		DestinationDTO dDto = new DestinationDTO();
		//code 값을 int로 변환
		int price = 0;
		try {

			price = Integer.parseInt(priceString); // 문자열을 int로 변환
			dDto.setPrice(price);
		}catch (NumberFormatException e) {
		    // ageString이 정수로 변환되지 않을 경우 처리할 예외 처리 코드
		    e.printStackTrace(); // 또는 다른 로깅 또는 예외 처리 방법을 선택
		}
		dDto.setDsName(dsname);
		dDto.setDsDetail(dsdetail);
		dDto.setType(type);
		dDto.setPrice(price);

		//System.out.println("dscode: " + dscode);
        System.out.println("dsname: " + dsname);
        System.out.println("dsdetail: " + dsdetail);
        System.out.println("type: " + type);
        System.out.println("price: " + price);
        
		
		// DestinationDAO 객체 생성
		DestinationDAO dDao = new DestinationDAO();	
		// 회원 등록 결과 확인
		boolean insertCheck = dDao.destinationInsertManager(dDto);
		if (insertCheck) {
            // 회원 추가 성공 시, 다시 Manager.jsp로 이동
			RequestDispatcher dispatcher = request.getRequestDispatcher("./DestinationList.jsp");
	        dispatcher.forward(request, response);
        } else {
            // 회원 추가 실패 시, 어떠한 처리를 수행 (예: 에러 페이지로 리다이렉트)
            response.sendRedirect("/error.jsp");
        }
	    
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    // 한글 인코딩 설정
	    request.setCharacterEncoding("UTF-8");

	    // 요청 파라미터 받아오기
		String codeString = request.getParameter("dscode");//문자열로 받음
		String dsname = request.getParameter("dsname");
		
		//code 값을 int로 변환
		int dscode = 0;
		try {
			dscode = Integer.parseInt(codeString); // 문자열을 int로 변환
		}catch (NumberFormatException e) {
		    // ageString이 정수로 변환되지 않을 경우 처리할 예외 처리 코드
		    e.printStackTrace(); // 또는 다른 로깅 또는 예외 처리 방법을 선택
		}

	    // MemberDAO 객체 생성
	    DestinationDAO destinationDAO = new DestinationDAO();

	    // MemberDAO에서 새로 추가한 메서드 호출
	    DestinationDTO destination = destinationDAO.getDestinationByDsCode(dscode);
	    HttpSession session = request.getSession();
        session.setAttribute("writeid", dscode);

	    if (destination != null) {
	        // 회원 정보가 존재할 경우, 해당 정보를 request에 저장하여 JSP로 전달
	        request.setAttribute("destination", destination);

	        // 여기에서 필요한 JSP 페이지로 포워딩
	        RequestDispatcher dispatcher = request.getRequestDispatcher("./DestinationInfo.jsp");
	        dispatcher.forward(request, response);
	    } else {
	        // 회원 정보가 없을 경우에 대한 처리
	        // 예를 들어, 에러 메시지를 설정하거나 다른 작업 수행 가능
	        response.getWriter().write("해당 여행지 정보가 존재하지 않습니다.");
	    }
	}
}
