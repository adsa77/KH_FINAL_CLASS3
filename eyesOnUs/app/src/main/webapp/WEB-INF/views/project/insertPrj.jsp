<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TEAM ROOM</title>
    <script defer src="../js/projectJs/projectInsert.js"></script>
    <link rel="stylesheet" href="/css/teamRoom/teamRoom.css">
    <link rel="stylesheet" href="/css/teamRoom/list.css">
    <link rel="stylesheet" href="/css/teamRoom/sidebar.css">
    <link rel="stylesheet" type="text/css" href="/css/projectCss/projectInsert.css">
</head>
<body>

<div class="time">
 <div id="time">
  <!-- 현재 시간을 표시할 div 추가 -->
  </div>

  <div id="work-time-table">
  <!-- 근무 시간을 표시할 div 추가 -->
  <%@ include file="/WEB-INF/views/util/workTime.jsp" %>
  </div>
</div>

  <div id="sidebar" class="sidebar">
   <%@ include file="/WEB-INF/views/teamRoom/sidebar.jsp" %>
</div>
<button id="openBtn" class="open-btn">☰ Sidebar</button>




<div id="calendarContainer" class="calendar-container">
    <div id="out">
        <div id="in">
            <div id="div-title">
                <h1>프로젝트</h1>
            </div>
            &nbsp;&nbsp;<p>주제 :</p> <input type="text" name="title" id="title"><hr>
            &nbsp;&nbsp;<p>PM-CODE</p> : <input type="text" name="empNo" id="emp" value="${sessionScope.loginVo.empNo}"><br><hr>
            &nbsp;&nbsp;상태 : <input type="text" name="state" id="state" placeholder="1.등록  2.중지  3.해산"><br>
            <hr>
            &nbsp;&nbsp;<p>부서코드 :</p> <input type="text" name="code" id="code"><br><br>
            <textarea name="content" id="projectContent" placeholder="내용"></textarea><br>
            <div id="div-submit">
                <button id="submitButton" onclick="smt();">등록</button>
            </div>
        </div>
    </div>
</div>

<div id="listContainer" class="list-container">
  <!-- 여기에 **서브** 내용을 추가할 수 있습니다 -->
  <%@ include file="/WEB-INF/views/teamRoom/list.jsp" %>
</div>




<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="/js/teamRoom/list.js"></script>
<script src="/js/teamRoom/teamRoom.js"></script>

</body>
</html>
