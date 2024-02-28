package com.codingbox.web.servlet;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/Calc")
public class Calc extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int num1 = Integer.parseInt(req.getParameter("data1"));
		int num2 = Integer.parseInt(req.getParameter("data2"));
		
		int result = num1 + num2;
		req.setAttribute("result", result);
		
		//forward방식으로 전달
		req.getRequestDispatcher("c.jsp").forward(req, resp);
	}
}
