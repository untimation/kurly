package com.market.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.market.dao.MemDAO;
import com.market.dto.MemVO;


@WebServlet("/memberUpdate.do")
public class MemberUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		String userid = request.getParameter("userid");
		MemDAO mDao = MemDAO.getInstance();
		MemVO mVo = mDao.getMem(userid);
		request.setAttribute("mVo", mVo);
		RequestDispatcher dispatcher = request.getRequestDispatcher("mem/memberUpdate.jsp");
		dispatcher.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8"); // 한글 깨짐을 방지
        // 폼에서 입력한 회원 정보 얻어오기
        String userid = request.getParameter("userid");
        String pwd = request.getParameter("pwd");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String admin = request.getParameter("admin");
        String ymd = request.getParameter("ymd");
        // 회원 정보를 저장할 객체 생성
        MemVO mVo = new MemVO();
        mVo.setUserid(userid);
        mVo.setPwd(pwd);
        mVo.setEmail(email);
        mVo.setPhone(phone);
        mVo.setAdmin(Integer.parseInt(admin));
        mVo.setYmd(Integer.parseInt(ymd));
        MemDAO mDao = MemDAO.getInstance();
        mDao.updateMem(mVo);
        response.sendRedirect("login.do");
	}

}
