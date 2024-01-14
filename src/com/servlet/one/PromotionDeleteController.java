package com.servlet.one;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/PromotionDeleteController")
public class PromotionDeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
		// 한글 인코딩 설정
		request.setCharacterEncoding("UTF-8");
		
		// 요청 파라미터 받아오기
		String prmcodeString = request.getParameter("prmcode");//문자열로 받음
		String prmname = request.getParameter("prmname");

		// DestinationDTO 객체 생성 및 설정
		PromotionDTO pDto = new PromotionDTO();
		//code 값을 int로 변환
		int prmcode = 0;

		try {
			prmcode = Integer.parseInt(prmcodeString); // 문자열을 int로 변환
			pDto.setPrmCode(prmcode);

		}catch (NumberFormatException e) {
		    // ageString이 정수로 변환되지 않을 경우 처리할 예외 처리 코드
		    e.printStackTrace(); // 또는 다른 로깅 또는 예외 처리 방법을 선택
		}
		pDto.setPrmName(prmname);

        
		System.out.println("prmcode: " + prmcode);
        System.out.println("prmname: " + prmname);
        
     // PromotionDAO 객체 생성
 		PromotionDAO pDao = new PromotionDAO();	

        // 회원 정보 삭제
        boolean isDeleted = pDao.deletePromotion(prmcode, prmname);

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
		String prmcodeString = request.getParameter("prmcode");//문자열로 받음
		String prmname = request.getParameter("prmname");
		
		//code 값을 int로 변환
		int prmcode = 0;
		try {
			prmcode = Integer.parseInt(prmcodeString); // 문자열을 int로 변환
		}catch (NumberFormatException e) {
		    // ageString이 정수로 변환되지 않을 경우 처리할 예외 처리 코드
		    e.printStackTrace(); // 또는 다른 로깅 또는 예외 처리 방법을 선택
		}

	    // MemberDAO 객체 생성
	    PromotionDAO promotionDAO = new PromotionDAO();

	    // MemberDAO에서 새로 추가한 메서드 호출
	    PromotionDTO promotion = promotionDAO.getPromotionByPrmCode(prmcode);
	    HttpSession session = request.getSession();
        session.setAttribute("writeprmcode", prmcode);

	    if (promotion != null) {
	        // 회원 정보가 존재할 경우, 해당 정보를 request에 저장하여 JSP로 전달
	        request.setAttribute("promotion", promotion);

	        // 여기에서 필요한 JSP 페이지로 포워딩
	        RequestDispatcher dispatcher = request.getRequestDispatcher("./PromotionInfo.jsp");
	        dispatcher.forward(request, response);
	    } else {
	        // 회원 정보가 없을 경우에 대한 처리
	        // 예를 들어, 에러 메시지를 설정하거나 다른 작업 수행 가능
	        response.getWriter().write("해당 여행지 정보가 존재하지 않습니다.");
	    }
	}
   
}
