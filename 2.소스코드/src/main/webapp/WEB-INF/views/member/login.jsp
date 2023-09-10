<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/resources/css/login.css" rel="stylesheet">
<style>

</style>
</head>
<body>
	<form method="POST" action="/login" class="sub">
		<div class="login-container">
		    <div class="login-form">
		      <div class="asdf">
		        <img src="/resources/image/Bookbbang_logo.png" style="height: 100px ;">
		        <h3>로그인</h3>
		        <input type="text" id="username" name="username" placeholder="아이디를 입력하세요">
		        <input type="password" id="password" name="password" placeholder="비밀번호를 입력하세요">
		        <button type="submit" onclick="location.href='/notice.html';">로그인</button>
		        <div class="login-inp">
		            <span><input type="checkbox" name="" id="">자동 로그인</span>
		            <div style="margin-top: 5px;">
		                <a href="/member/findid.do"><span>아이디 찾기/</span></a>
		                <a href="/member/findpw.do"><span>비밀번호 찾기</span></a>
		            </div>
		        </div>
		        <button type="button" style="background-color:rgb(125, 178, 221);" onclick="location.href='/member/register.do';">회원가입</button>
		        <button style="background-color:gold ;">카카오 로그인</button>
		        <button style="background-color:darkslategray; color:#DDD">애플 로그인</button>
		      </div>
		    </div>
		  </div>
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token }">
	</form>
	
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script>
	$('.loginBtn').click(function(){
	    $('.name').val('wogus9610');
	    $('.password').val('1111');
	    $('.sub').submit();
	 });
</script>
</body>
</html>