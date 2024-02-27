/**
 *  회원가입 validation check
 */
function sendit(){
	let frm = document.joinForm;
	let userid = frm.userid;
	let userpw = frm.userpw;
	let userpw_re = frm.userpw_re;
	let username = frm.username;
	let userphone = frm.userphone;
	
	// 아이디 빈값체크 	-> alert 아이디를 입력하세요!
	if( userid.value == "" ){
		alert("아이디를 입력하세요!");
		userid.focus();
		return false;
	}
	
	// 아이디 길이체크	-> alert 아이디는 5자리 이상, 16자리 미만으로 작성
	if( userid.value.length <= 4 || userid.value.length >= 16 ){
		alert("아이디는 5자리 이상, 16자리 미만으로 작성해 주세요!");
		userid.focus();
		return false;
	}
	
	// 비밀번호 빈값체크	-> alert 비밀번호를 입력하세요!
	if( userpw.value == "" ){
		alert("비밀번호를 입력하세요!");
		userpw.focus();
		return false;
	}
	
	// 비밀번호 자리체크 	-> alert 비밀번호는 8자리 이상으로 입력하세요
	if( userpw.value.length < 8 ){
		alert("비밀번호는 8자리 이상으로 입력하세요!");
		userpw.focus();
		return false;
	}
	
	// 비밀번호=비밀번호확인-> alert 비밀번호와 비밀번호확인이 일치하지 않습니다!
	if( userpw.value != userpw_re.value ){
		alert("비밀번호와 비밀번호확인이 일치하지 않습니다!");
		userpw_re.focus();
		return false;
	}
	
	// 이름 빈값체크		-> alert 이름을 입력하세요!
	if( username.value == "" ){
		alert("이름을 입력하세요!");
		username.focus();
		return false;
	}
	
	// 휴대폰번호 빈값체크	-> alert 휴대폰번호를 입력하세요!
	if( userphone.value == "" ){
		alert("휴대폰번호를 입력하세요!");
		userphone.focus();
		return false;
	}
	
	// submit();
	frm.submit();
}
 
/*
	로그인 validation check
 */
function loginit(){
	let frm = document.frm;
	let userid = frm.userid;
	let userpw = frm.userpw;
	
	// 아이디 빈값처리
	if( userid.value == "" ){
		alert("아이디를 입력해주세요");
		userid.focus();
		return false;
	}
	
	// 패스워드 빈값처리
	if( userpw.value == "" ){
		alert("패스워드를 입력해주세요");
		userpw.focus();
		return false;
	}
	
	frm.submit();
}
 
function checkId(userid){
	if(userid == ""){
		alert("아이디를 입력해주세요");
		return false;
	} else {
		// ajax
		let xhr = new XMLHttpRequest();
		xhr.open("GET","idcheck.jsp?userid="+userid,true);
		xhr.send();
		xhr.onreadystatechange = function(){
			if( xhr.readyState == XMLHttpRequest.DONE
					&& xhr.status == 200 ){
				// 만약 회원가입이 가능한 아이디라면
				// id가 text영역에 "사용할 수 있는 아이디입니다" 출력
				// 그렇지 않다면
				// id가 text영역에 "중복된 아이디입니다" 출력
				//alert(xhr.responseText.trim());
				if(xhr.responseText.trim() == "ok"){
					document.getElementById("text").innerHTML 
					= "사용할 수 있는 아이디입니다.";
				} else {
					document.getElementById("text").innerHTML 
					= "중복된 아이디입니다.";
				}
			}
		}
		
	}
} 

function checkId2(userid){
	if(userid == ""){
		alert("아이디를 입력해주세요");
		return false;
	} else {
		// jquery ajax
		$.ajax({
			type	: 'get',	//타입설정
			url		: 'idcheck.jsp?userid='+ userid,
			async	: true,		//비동기화 여부 (비동기 : true)
			success	: function(result){	//성공시 콜백함수
				if(result.trim() == "ok"){
					document.getElementById("text").innerHTML 
					= "사용할 수 있는 아이디입니다.";
				} else {
					document.getElementById("text").innerHTML 
					= "중복된 아이디입니다.";
				}
			},
			error	: function(result, status, error){	//실패시 콜백함수
				console.log(error);
			}
		});
	}
}

function checkId3(userid){
	if(userid == ""){
		alert("아이디를 입력해주세요");
		return false;
	} else {
		// jquery ajax
		$.ajax({
			type	: 'post',	//타입설정
			url		: 'idcheck.jsp',
			data	: { "userid" : userid },
			async	: true,		//비동기화 여부 (비동기 : true)
			success	: function(result){	//성공시 콜백함수
				if(result.trim() == "ok"){
					document.getElementById("text").innerHTML 
					= "사용할 수 있는 아이디입니다.";
				} else {
					document.getElementById("text").innerHTML 
					= "중복된 아이디입니다.";
				}
			},
			error	: function(result, status, error){	//실패시 콜백함수
				console.log(error);
			}
		});
	}
}
 
 
 
 
 
 
 
 
 
 
 
 