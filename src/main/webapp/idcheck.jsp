<%@page import="com.codingbox.web.dao.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String userid = request.getParameter("userid");
	MemberDAO mdao = new MemberDAO();
	// mdao.checkId(userid)
	// 중복된 아이디가 있으면 : true return
	// 중복된 아이디가 없으면 : false return
				
	if( !mdao.checkId(userid) ){	// 중복아이디 없음 = 가입가능
		out.print("ok");
	} else {						// 중복아이디 있음 = 가입불가
		out.print("not-ok");
	}
%>










