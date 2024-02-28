<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 
		조건을 jstl로 추가
		param값으로 넘어온 userid가 null 또는 ""이라면(empty)
		<form> tag를 그려주고
		그렇지 않다면
		param값 userid, userpw 획득 후 변수에다가 각각 할당
		출력
	 -->
	 <c:choose>
	 	<c:when test="${empty param.userid}">
	 		<form action="">
			아이디		<input type="text" name="userid"><br/>
			비밀번호	<input type="password" name="userpw"><br/>
			<input type="submit">
			</form>
	 	</c:when>
	 	<c:otherwise>
	 		<c:set var="userid" value="${param.userid}" />
        	<c:set var="userpw" value="${param.userpw}" />
        		<c:choose>
        		<c:when test="${userid == 'admin' }">관리자</c:when>
        		<c:when test="${userid == 'apple' }">김사과</c:when>
        		<c:otherwise>비회원</c:otherwise>
        		</c:choose>
	 	</c:otherwise>
	 </c:choose>
</body>
</html>