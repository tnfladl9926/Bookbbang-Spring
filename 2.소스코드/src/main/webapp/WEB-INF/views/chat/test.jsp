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

</style>
</head>
<body>
	<div>${name}</div>
	
	<input type="text" class="test">
	
<script src="https://cdn.jsdelivr.net/sockjs/1/sockjs.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script type="text/javascript">
	let ws = new SockJS("<c:url value="/echo"/>");
	
	ws.onmessage = onMessage;
	ws.onclose = onClose;
	
	function onMessage(evt){
		let data = evt.data;
	}
	
	$('.test').keydown(function(evt){
		if(evt.keyCode == 13){
			console.log('send message...');
			ws.send($('.test').val());		
		}
	});
	
	$(window).on('beforeunload', function(){
		ws.send(JSON.stringify(chat));
		
	});
	
	function onClose(evt){
		
	}
</script>
</body>
</html>