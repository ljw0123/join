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
	<form action="search_db.jsp">
		검색하실 회원의 ID
		<input type="text" name="userid"><br>
		<input type="button" value="전체 회원보기" onclick="location.href='list_db.jsp'">
		<input type="submit">
		
	</form>
	<hr>
	<table border="1">
		<tr>
			<th>아이디</th>
			<th>비밀번호</th>
			<th>이름</th>
			<th>성별</th>
			<th>상세주소</th>
		</tr>
		<c:choose>
			<c:when test="${!empty requestScope.user }">
				<c:set var="user" value="${requestScope.user }"/>
				<tr>
					<td>${user.userid }</td>
					<td>${user.userpw }</td>
					<td>${user.username }</td>
					<td>${user.usergender }</td>
					<td>${user.addrdetail }</td>
				</tr>
			</c:when>
		</c:choose>
		<c:forEach var="list" items="${list}">
            <tr>
                <td>${list.userid}</td>
                <td>${list.userpw}</td>
                <td>${list.username}</td>
                <td>${list.usergender}</td>
                <td>${list.addrdetail}</td>
            </tr>
        </c:forEach>
	</table>
</body>
</html>