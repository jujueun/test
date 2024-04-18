package com.mystudy.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mystudy.model.dao.movieDAO;
import com.mystudy.model.vo.movieVO;

@WebServlet("/mTitle")
public class MovieController extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println(":: MovieNameController.doGet 실행");
		process(request, response);
	}
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println(":: MovieNameController.doPost 실행");
		request.setCharacterEncoding("UTF-8");
		doGet(request, response);
	}
	private void process(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		System.out.println("----> process() 시작 ");
		//1. DB연결하고 데이터 가져오기
		List<movieVO> mTitle = movieDAO.getmTitle();
		
		//2. 응답페이지(list.jsp)에 전달
		request.setAttribute("mTitle", mTitle);
		
		//3. 페이지 전환 - 응답할 페이지(list.jsp)로 전환(포워딩)
		request.getRequestDispatcher("main.jsp").forward(request, response);
		
		System.out.println("----> process() 끝 ");
	}
}
