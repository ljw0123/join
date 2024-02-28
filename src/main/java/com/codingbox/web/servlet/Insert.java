package com.codingbox.web.servlet;

import java.io.IOException;
import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.codingbox.web.mybatis.SqlMapConfig;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/insert")
public class Insert extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int intdata = Integer.parseInt(req.getParameter("data1"));
		String strdata = req.getParameter("data2");
		
		SqlSessionFactory factory = SqlMapConfig.getFactory();
		SqlSession sqlSession = factory.openSession(true);
		
		HashMap<String, Object> datas = new HashMap<String, Object>();
		datas.put("intdata", intdata);
		datas.put("strdata", strdata);
		
		int result = 0;
		result = sqlSession.insert("Test.insert", datas);
		
		if(result != 0) {
			req.setAttribute("result", "추가성공!");
		}else {
			req.setAttribute("result", "추가실패!");
		}
		
		req.getRequestDispatcher("c.jsp").forward(req, resp);
	}
}
