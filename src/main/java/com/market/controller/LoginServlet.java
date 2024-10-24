package com.market.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.market.dao.MemDAO;
import com.market.dto.MemVO;

@WebServlet("/login.do")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String url = "mem/login.jsp";
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	
		HttpSession session = request.getSession();

		// 이미 로그인 된 사용자라이면 메인 페이지로 이동한다.
		if (session.getAttribute("loginUser") != null) {
			url = "index.jsp";
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher("mem/login.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
	        throws ServletException, IOException {

	    String url = "mem/login.jsp";
	    String userid = request.getParameter("userid");
	    String pwd = request.getParameter("pwd");
	    System.out.println("userid : " +  userid);
	    System.out.println("pwd : " +  pwd);
	    MemDAO mDao = MemDAO.getInstance();
	    int result = mDao.userCheck(userid, pwd);
	    
	    HttpSession session = request.getSession(); // 세션 객체를 한 번만 생성

	    if (result == 1) {
	        MemVO mVo = mDao.getMem(userid);  // 사용자 정보를 가져오는 코드
	        HttpSession session1 = request.getSession();
	        session1.setAttribute("loginUser", mVo);  // 전체 사용자 객체를 세션에 저장
	        session1.setAttribute("username", mVo.getUsername());  // 사용자의 이름을 세션에 저장
	        session1.setAttribute("userResult", result);  // 로그인 성공 여부를 세션에 저장
	        System.out.println("mVo : " + mVo);
	        request.setAttribute("message", "로그인에 성공했습니다.");
	        url = "index.jsp";

	    } else if (result == 0) {
	        request.setAttribute("message", "비밀번호가 맞지 않습니다.");
	    } else if (result == -1) {
	        request.setAttribute("message", "존재하지 않는 회원입니다.");
	    }

	    RequestDispatcher dispatcher = request.getRequestDispatcher(url);
	    dispatcher.forward(request, response);
	}



}
