/**
 * get방식 ajax
 */
function send1(){
	let xhr = new XMLHttpRequest();
	// open(전달방식, URL주소, 동기여부(비동기:true,기본값, 동기:false));
	xhr.open("GET","request_ajax.jsp?userid=admin&userpw=1234",true);
	xhr.send();
	xhr.onreadystatechange = function(){
		// 성공일때
		if( xhr.readyState == XMLHttpRequest.DONE
				&& xhr.status == 200 ){
			document.getElementById("result").innerHTML
				= xhr.responseText;
			//alert(xhr.responseText);
		}
	}
}

function send2(){
	let xhr = new XMLHttpRequest();
	xhr.open("POST","request_ajax.jsp",true);
	xhr.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
	xhr.send("userid=postamdin&userpw=post1234");
	xhr.onreadystatechange = function(){
		if( xhr.readyState == XMLHttpRequest.DONE
				&& xhr.status == 200 ){
			document.getElementById("result").innerHTML
				= xhr.responseText;
			//alert(xhr.responseText);
		}
	}
}

function sendJson(){
	let xhr = new XMLHttpRequest();
	xhr.open("GET","data.json",true);
	xhr.send();
	xhr.onreadystatechange = function(){
		if( xhr.readyState == XMLHttpRequest.DONE
				&& xhr.status == 200 ){
			//alert(xhr.responseText);
			let obj = JSON.parse(xhr.responseText);
			alert(obj);
			alert(obj.count);
			alert(obj.result);		
		}
	}
}











