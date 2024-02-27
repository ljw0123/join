<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	${param.num}<br>
	${ param.num >= 3 }<br>
	${ param.num ge 3 }<br>
	${ empty param.num }<br>
	${not empty param.num }<br>
	${empty param.num ? '값이 비어 있습니다.' : param.num }<br>
	---------------------------------------------------------<br>
	${param.num / 2 }
</body>
</html>