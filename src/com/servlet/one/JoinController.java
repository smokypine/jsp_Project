package com.servlet.one;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/register.do")
public class JoinController extends HttpServlet {
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
		//mDto.setRole(role);		
		
		// MemberDAO 객체 생성
		MemberDAO mDao = new MemberDAO();	
		// 회원 등록 결과 확인
		boolean insertCheck = mDao.memberInsert(mDto);

	    if(insertCheck){
	    	// 회원 등록 성공 시
	    	request.setAttribute("joinResult", insertCheck);
			HttpSession session = request.getSession();
			session.setAttribute("idKey", id);
			// Index 페이지로 이동
			RequestDispatcher dispatcher = request.getRequestDispatcher("./index.jsp");
			dispatcher.forward(request, response);

		}else{
			// 회원 등록 실패 시
	    	request.setAttribute("joinResult", 0);
			// Register 페이지로 이동
			RequestDispatcher dispatcher = request.getRequestDispatcher("./Register.jsp");
			dispatcher.forward(request, response);
		}
	}
}
