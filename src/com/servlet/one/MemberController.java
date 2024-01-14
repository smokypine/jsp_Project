package com.servlet.one;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/MemberController")
public class MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 한글 인코딩 설정
		request.setCharacterEncoding("UTF-8");
		
		// 요청 파라미터 받아오기
		String id = request.getParameter("id");
		String pw = request.getParameter("password");
		String name = request.getParameter("name");
		String ageString = request.getParameter("age"); // 문자열로 받아옴
		String gender = request.getParameter("gender");
		String email = request.getParameter("email");
		String role = request.getParameter("role");

		// MemberDTO 객체 생성 및 설정
		MemberDTO mDto = new MemberDTO();
		mDto.setId(id);
		mDto.setPassword(pw);
		mDto.setName(name);

		// age 값을 int로 변환
		int age = 0; // 기본값 또는 에러 처리를 위한 값
		try {
		    age = Integer.parseInt(ageString); // 문자열을 int로 변환
		    mDto.setAge(age); // MemberDTO에 int로 변환된 age 설정
		} catch (NumberFormatException e) {
		    // ageString이 정수로 변환되지 않을 경우 처리할 예외 처리 코드
		    e.printStackTrace(); // 또는 다른 로깅 또는 예외 처리 방법을 선택
		}
		mDto.setGender(gender);
		mDto.setEmail(email);
		mDto.setRole(role);	
		
		// MemberDAO 객체 생성
		MemberDAO mDao = new MemberDAO();	
		// 회원 등록 결과 확인
		boolean insertCheck = mDao.memberInsertManager(mDto);
		if (insertCheck) {
            // 회원 추가 성공 시, 다시 Manager.jsp로 이동
			RequestDispatcher dispatcher = request.getRequestDispatcher("./MemberList.jsp");
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
