<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://me2.do/5BvBFJ57">
<style>
	.header {
	 	top: 0;
	 	position: fixed;
	 	padding: 7px;
		text-align: center;
		background-color:  #BACEE0;
		width: 100%;
		max-width: 786px;
		z-index: 1;
	}
	
	.header .other{
		font-size: 2rem;
		font-weight: bold;
	}

	.back{
		background-color: #BACEE0;
		padding-bottom: 27px;
	}
	
	.other{
		text-align: left;
		align-items: left;
	}
	
	.other .content{
		background-color: #FFFFFF;
		border-radius: 10%;
		display:inline-block;
		padding: 5px;
	}
	.me{
		text-align: right;
		align-items: left;
	}
	
	.me .content{
		background-color: #FFEB33;
		border-radius: 10%;
		display:inline-block;
		padding: 5px;
	}
	
	.content{
		font-size: 1.05rem;
		margin: 2px 0px;
	}
	
	.nick {
		font-size: 14px;
	}
	
	.time{
		font-size: 8px;
	}
	
	.field{
		position: fixed;
    	bottom: 10px;
    	max-width:754px;
    	width: 90%;
    	border: 0;
	}
	
	.item{
		margin-bottom: 5px;
	}
	.back{
		overflow-y: scroll;
	}
	
	.back::-webkit-scrollbar {
	
    	display: none; /* 크롬, 사파리, 오페라, 엣지 */
	}
</style>
</head>
<body class="back">
	<div class="header"><span class="other">${otherName}</span><span>님과 대화</span></div>
	
	<div id="chatLog">
		<c:forEach items="${list}" var="dto">
			<c:if test="${dto.memberseq != memberseq}">
			<div class="item other">			
				<div>
					<div class="nick">${dto.nickname}</div>
					<div class="content">${dto.field}</div> <span class="time">${dto.regdate}</span>
				</div>
			</div>
			</c:if>
			<!-- if문만 비교하면 되는데 노란줄가서 좀 그래서 그냥 따로뒀음 -->
			
			<c:if test="${dto.memberseq == memberseq}">
			<div class="item me">			
				<div>
					<div class="nick">${dto.nickname}</div>
					<span class="time">${dto.regdate}</span> <div class="content">${dto.field}</div>
				</div>
			</div>
			</c:if>
		</c:forEach>
	</div>
	
	<div class="chatText"><input type="text" name="field" placeholder="내용을 입력하세요." class="field"></div>
	
	<input type="hidden" name="otherName" value="${otherName}" class="otherName">
	<input type="hidden" name="chatroomseq" value="${chatroomseq}" class="seq">
	<input type="hidden" name="memberseq" value="${memberseq}" class="member">
	<input type="hidden" name="myNick" value="${myNick}" class="myNick">
	
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/dayjs@1.11.8/dayjs.min.js"></script> <!-- day.js -->
<script src="https://cdn.jsdelivr.net/sockjs/1/sockjs.min.js"></script>

<script>
	
	let ws = new SockJS("<c:url value="/echo"/>");
	
	function connect(){
		
		ws.onopen = onOpen;
		ws.onmessage = onMessage;
		
		
		function onOpen(evt){
			let chat = {
				code: '1',
				memberseq: $('.member').val(),
				chatroomseq: $('.seq').val()
			};
			
			ws.send(JSON.stringify(chat));
		}
		
		function onMessage(evt){
			let chat = JSON.parse(evt.data);
			
			let chatroomseq = $('.seq').val();
			
			//같은방 번호 사람한테만 print를 해야하기 때문에 비교한 이후에 변수생성
			if(chat.chatroomseq == chatroomseq){
				let other = $('.otherName').val();
				let time = chat.regdate.split(' ');
				
				if(chat.code == '2'){
					print(other, chat.field, time[1]);
				}else if(chat.code == '3'){
					
				}
			}
		}
	}
	
		
	function scrollList(){
		$(window).scrollTop($(document).height());
	}
	
	//상대방 대화 찍기
	function print(name, chat, time){
		let temp = `
			<div class="item other">			
				<div>
					<div class="nick">\${name}</div>
					<div class="content">\${chat}</div> <span class="time">\${time}</span>
				</div>
			</div>
		`;
		
		$('#chatLog').append(temp);
		
		scrollList();
	}
	
	//내 대화 찍기
	function mePrint(name, chat, time){
		let temp = `
			<div class="item me">			
			<div>
				<div class="nick">\${name}</div>
				<span class="time">\${time}</span> <div class="content">\${chat}</div>
			</div>
			</div>
		`
		
		$('#chatLog').append(temp);
		
		scrollList();
	}
	
	//code: 1 입장
	//code: 2 메세지 전송
	//code: 3 채팅방 나가기
	
	//엔터누르면 메세지 전송 > 서버로
	$('.field').keydown(function(evt){
		if(evt.keyCode == 13){
			let chat = {
				code: '2',
				memberseq: $('.member').val(),
				chatroomseq: $('.seq').val(),
				field: $('.field').val(),
				regdate: dayjs().format('YYYY-MM-DD HH:mm')
			};
			
			if(chat.field == ''){
				alert('메세지를 입력하세요.');
			}else{
				let time = chat.regdate.split(' ');
				let nick = $('.myNick').val();
				
				ws.send(JSON.stringify(chat));
				
				mePrint(nick, chat.field, time[1]);
			}
			
			$('.field').val('').focus();
		}
	});
	
	
	$(window).on('beforeunload', function(){
		$(opener.document).find('.in').css('opacity', 1);
		$(opener.document).find('.in').prop('disabled', false);
		
		//누군가 나갈때 서버에게 메세지 보내기
		let chat = {
				code: '3',
				memberseq: $('.member').val(),
				chatroomseq: $('.seq').val(),
				regdate: dayjs().format('YYYY-MM-DD HH:mm')
		};
		
		ws.send(JSON.stringify(chat));
		
	});
	
	//헤더 fixed라서 그만큼 요소를 내리기
	$(document).ready(function() {
		var height = $('.header').outerHeight(); 
		
		$('#chatLog').css('margin-top', height); // margin-top 값을 대상 요소의 높이로 설정
		scrollList();	
	});
	
</script>
</body>
</html>