<%@page import="com.codingbox.web.dto.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	MemberDTO mdto 
		= (MemberDTO)session.getAttribute("session_id");
	if( mdto != null ){
%>
	<script>
		alert("<%=mdto.getUsername() %> 님 안녕하세요!");
	</script>
	<p>
		<%=mdto.getUsername() %>(<%=mdto.getUserid() %>)님 
		<input type="button" value="로그아웃" 
			onclick="location.href='logout_db.jsp'">
	</p>
<%} else { %>
	<script>
		alert("로그인 후 이용해주세요~");
		location.href = "login_view.jsp";
	</script>
<%} %>
</body>
</html>











