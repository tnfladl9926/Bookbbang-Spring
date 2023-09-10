<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
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
	<h1>로그인 성공</h1>
	
	<div><sec:authentication property="principal"/></div>
	<div><sec:authentication property="principal.memberseq"/></div>
	
	<div>CustomUser 객체로 가져온 회원 번호: ${memberseq}</div>
	
	<div><a href="/secondhand/list.do">헌책방</a></div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script>

</script>
</body>
</html>