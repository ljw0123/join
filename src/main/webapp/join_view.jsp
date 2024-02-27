<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Join View</title>
</head>
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<style>
#text {
   color: darkblue;
   font-seight: bold;
}
</style>
<body>
   <div id="container">
      <form action="join_db.jsp" method="post" name="joinForm">
         <p id="text"hidden"></p>
         <p>
            <label>아이디 <input type="text" name="userid"></label> <input
               type="button" value="중복확인"
               onclick="checkId(joinForm.userid.value);">
         </p>
         <p>
            <label>비밀번호 <input type="password" name="userpw"></label>
         </p>
         <p>
            <label>비밀번호 확인 <input type="password" name="userpw_re"></label>
            <input type="button" value="중복확인" onclick="">
         </p>
         <p>
            <label>이름 <input type="text" name="username"></label>
         </p>
         <p>
            성별 <br> <label> 남자<input type="radio" name="usergender"
               value="M" checked></label> <label> 여자<input type="radio"
               name="usergender" value="W"></label>
         </p>
         <p>
            <label>핸드폰번호 <input type="text" name="userphone"></label>
         </p>
         <p>
            우편번호 <input type="text" name="zipcode" id="zipcode" placeholder="우편번호">
            <input type="button" onclick="DaumPostcode()"
               value="우편번호 찾기"><br>
         </p>
         <p>
            주소 <input type="text" name="addr" id="addr" placeholder="주소"><br>
         </p>
         <p>
            상세주소 <input type="text" name="addrdetail" id="addrdetail"
               placeholder="상세주소">
         </p>
         <p>
            참고항목 <input type="text" name="addrdetc" id="addrdetc" placeholder="참고항목">
         </p>
         <p>
            <input type="button" value="가입완료" onclick="sendit()">
         </p>
      </form>
   </div>
</body>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="user.js"></script>
</html>