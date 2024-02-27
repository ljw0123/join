/**
 * 
 */
// 페이지가 로드 됐을 때
window.onload = function(){
	let word = new Array();
	let obj = "";
	let xhr = new XMLHttpRequest();
	xhr.open("GET","data2.json",true);
	xhr.send();
	xhr.onreadystatechange = function(){
		if( xhr.readyState == XMLHttpRequest.DONE
				&& xhr.status == 200 ){
			obj =  JSON.parse(xhr.responseText);	
			// obj에서 search_word라는 key를 가지고 
			// value값을 꺼내오면 [{},{},{},{},{}]
			for( let i=0; i<obj.search_word.length; i++ ){
				word[i] = obj.search_word[i].name;
			}
		}
	}
	
	let i = 0; // 순위
	let interval = setInterval(function(){
		// json 안에있는 search_word 배열의 길이로 나눈 나머지
		// 0,1,2,3,4,5 -> 5가되는 순간 나머지는 다시 0이된다.
		i =  i%obj.search_word.length;
		document.getElementById("td1").innerHTML = i+1;
		document.getElementById("td2").innerHTML = word[i];
		i++;
	}, 2000);
	
	setTimeout(function(){
		// clearInterval(인터벌);	: 해당 인터벌을 삭제
		clearInterval(interval);
	}, 20000);	// 20초 후에
	
	
	
	
}









