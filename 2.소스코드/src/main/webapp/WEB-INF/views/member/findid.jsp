<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <link href="/resources/css/login.css" rel="stylesheet">
  <title>아이디 찾기</title>
  <style>

    

  

  </style>
</head>
<body>
  <div class="login-container">
    <div class="login-form">
      <div class="asdf">
        <img src="/resources/image/Bookbbang_logo.png" style="height: 100px ;">
        <h3>아이디 찾기</h3>
        <div class="login-tab">
          <a href="/member/findid.do" class="login-tab-item active">아디기 찾기</a>
          <a href="/member/findpw.do" class="login-tab-item">비밀번호 찾기</a>
        </div>
        <input type="text" id="username" name="username" placeholder="이름">
        <input type="password" id="password" name="password" placeholder="휴대전화(-없이)">
        <button type="submit" onclick="location.href='/notice.html';">아이디 찾기</button>
      </div>
    </div>
  </div>
</body>
</html>