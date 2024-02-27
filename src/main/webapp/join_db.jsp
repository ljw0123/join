<%@page import="com.codingbox.web.dao.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="member" class="com.codingbox.web.dto.MemberDTO" />
<%-- <jsp:setProperty property="userid" name="member"/> --%>
<jsp:setProperty property="*" name="member"/>
<!-- 앞에서 전달된 name 속성과 필드의 이름이 같으면 value가 자동으로 세팅 -->

<%
// 	MemberDTO mdto = new MemberDTO();
// 	mdto.setUserid(request.getParameter("userid"));
	
	MemberDAO mdao = new MemberDAO();
	if(mdao.join(member)){	// 회원가입 성공	
%>
	<script>
		alert("회원가입 성공!");
		location.href = "login_view.jsp";
	</script>
<% } else { 				// 회원가입 실패 %>
	<script>
		alert("회원가입 실패!");
		location.href = "join_view.jsp";
	</script>
<% } %>
</body>
</html>









