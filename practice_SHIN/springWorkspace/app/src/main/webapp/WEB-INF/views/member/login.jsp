<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login</title>
  <link rel="stylesheet" href="/css/member/login.css">
  <script defer src="/js/member/login.js"></script>
</head>
<body>
  <div class="background"></div>

  <div class="container">
    <div class="animation" id="text1">Welcome to EYES ON US</div>
    <br>
    <div class="animation" id="text2">지금 바로 시작하세요.</div>
  </div>





  <div class="login">
    <h1>Sign up Now</h1>
    <form id="loginForm">
      <label for="username">아이디:</label>
      <input type="text" id="username" name="username" required>

      <label for="password">비밀번호:</label>
      <input type="password" id="password" name="password" required>

      <button id="loginButton">로그인</button>
    </form>
      <button id="joinButton">회원가입</button>
    </div>

</body>
</html>
