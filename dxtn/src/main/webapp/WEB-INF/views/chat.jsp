<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<meta charset="UTF-8">
	<title>Chating</title>
	<style>
		*{
			margin:0;
			padding:0;
		}
		
		.container{
			width: 35%;
			margin: auto;
			margin-top: 50px;
		}
		
		.container .header { 
			font-size: 14px; 
			padding: 15px 0; 
			background-color: #BFE6F5; 
			color: white; 
			text-align: center; 
			border-radius: 5px 5px 0px 0px / 5px 5px 0px 0px;  
		}
		
		.container .chating { 
			padding-bottom: 32px; 
			overflow-y: scroll;
			height: 485.5px;
			border-left: 1px solid #BFE6F5;
			background-color: #F2FDFF;
		}
		
		.container .chating ul { 
			width: 100%; list-style: none; 
		}
		
		.container .chating ul li { 
			width: 100%; 
		}
		
		li{
			list-style: none;
		}
		
		.other { 
			text-align: left; 
		}
		
		.otherMsg{
			text-align: left;
			display: inline-block; 
			margin: 5px 20px; 
			max-width: 75%; 
			border: 1px solid #BFBFBF; 
			padding: 10px; 
			border-radius: 5px;
			background-color: #FCFCFC; 
			color: #555; 
			word-wrap: break-word;
		}
		
		.me { 
			text-align: right; 
		}
		
		.meMsg { 
			text-align: right; 
			display: inline-block; 
			margin: 5px 20px; 
			max-width: 75%; 
			border: 1px solid #BFBFBF; 
			padding: 10px; 
			border-radius: 5px;
			background-color: #FCFCFC; 
			color: #555;
			word-break: break-word;
		}
		
		.sender{
			margin: 10px 20px 0 20px; 
			font-weight: bold;
		}
		
		.input-div { 
			position: fixed; 
			bottom: 0; 
			width: 35%; 
			height: 80px; 
			background-color: #FFF; 
			text-align: center; 
			border: 1px solid #BFE6F5;
			margin-bottom: 50px;
			box-sizing: border-box;
			border-radius: 0px 0px 5px 5px / 0px 0px 5px 5px;
		}
		
		.input-div > textarea { 
			width: 80%; 
			height: 79px; 
			padding: 10px; 
			border: none;
			resize: none;
			box-sizing: border-box;
			border-radius: 0px 0px 0px 5px / 0px 0px 0px 5px;
		}
		
		#sendBtn{
			width: 20%;
			height: 80px;
			float: right;
			border: none;
			background-color: #BFE6F5; 
			color: white;
			border-radius: 0px 0px 5px 0px / 0px 0px 5px 0px;
		}

	</style>
</head>

<script type="text/javascript">
	var ws;
	window.onload = wsOpen();
	function wsOpen(){
		ws = new WebSocket("ws://" + location.host + "/chating");
		wsEvt();
	}
	
	function wsEvt() {
		ws.onopen = function(data){
			//소켓이 열리면 초기화 세팅하기
		}
		
		// 메시지 처리
		ws.onmessage = function(data) {
			var msg = data.data;
			var username = msg.split("|")[0].trim();
            var message = msg.split("|")[1].trim();
			if(message != null && message.trim() != ''){

				if(username === $("#cN").val()){
					str = "";
					str += "<li class='me'><div class='sender'>나</div></li>"
					str += "<li class='me'>" 
					str += "<div class='meMsg'>" + message + "</div>"
					str += "</li>";
					
					$("#chating").append(str);									
				}else{
					str = "";
					str += "<li class='other'>"
					str += "<div class='sender' onclick='getInnerText()' id='dxtnId'>"+ username + "</div>"
					str += "</li>";
					str += "<li class='other'>" 
					str += "<div class='otherMsg'>" + message + "</div>"
					str += "</li>";
					
					$("#chating").append(str);
				}
			}
		}

		document.addEventListener("keypress", function(e){
			if(e.keyCode == 13){ //enter press
				send();
				prepareScroll();
			}
		});
	}

	function send() {
		var uN = $("#cN").val();
		var msg = $("#chatting").val();
		ws.send(uN+" | "+msg);
		$('#chatting').val("");
		scrollUl();
	}
	
	function scrollUl() {
		  var chatUl = document.querySelector('#chating');
		  chatUl.scrollTop = chatUl.scrollHeight; // 스크롤의 위치를 최하단으로
	}
	
	function prepareScroll() {
        window.setTimeout(scrollUl, 50);
     }
	
	function getInnerText(){
		var name = $('#dxtnId').text();
		var uN = $("#cN").val();
		if(uN == "admin_dxtn"){
			var cf = confirm("강퇴하시겠습니까?");
			console.log(cf);
			if(cf == true){
				$.ajax({
				    type : 'post',           // 타입 (get, post, put 등등)
				    url : '/kick',           // 요청할 서버url
				    async : true,            // 비동기화 여부 (default : true
				    dataType : 'text',       // 데이터 타입 (html, xml, json, text 등등)
				    data : {  // 보낼 데이터 (Object , String, Array)
				      "name" : name,
				    },
				    success : function(result) { // 결과 성공 콜백함수
				        console.log(result);
				    },
				    error : function(request, status, error) { // 결과 에러 콜백함수
				        console.log(error);
				    }
				})
			}else{
				
			}
		}else{
			
		}
	}
	
</script>
<body>
	<input type="hidden" value="${chatName }" id="cN" name="cN">
	<div id="container" class="container">
		<div class="header">
			채팅
		</div>
		<div id="chating" class="chating">
			<ul>
				<!-- msg -->
			</ul>
		</div>
		
		<div id="yourMsg">
			<div class="input-div">
       			 <textarea id="chatting" placeholder="Press Enter for send message."></textarea>
       			 <button onclick="send()" id="sendBtn" >보내기</button>
   			</div>
			<!-- <table class="inputTable">
				<tr>
					<th>메시지</th>
					<th><input id="chatting" placeholder="보내실 메시지를 입력하세요." required></th>
					<th><button onclick="send()" id="sendBtn" >보내기</button></th>
				</tr>
			</table> -->
		</div>
	</div>
</body>
</html>