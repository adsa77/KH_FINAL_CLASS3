<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">
    
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>TEAM ROOM</title>
        <link rel="stylesheet" href="/css/teamRoom/teamRoom.css">
        <link rel="stylesheet" href="/css/teamRoom/list.css">
        <link rel="stylesheet" href="/css/teamRoom/sidebar.css">
        <link rel="stylesheet" href="/css/projectCss/projectModify.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
        <script defer src="/js/projectJs/projectModify.js"></script>
    </head>

<body>
    <input type="text" name="svo" id="svo" value="${sessionScope.loginMemberVo.no}" hidden>
    <input type="text" name="vo" id="vo" value="${vo.empNo}" hidden>
    <div class="time">
    <div id="time">
        <!-- 현재 시간을 표시할 div 추가 -->
    </div>

    </div>



    <c:if test="${sessionScope.loginMemberVo.no eq vo.empNo}">
        <div id="calendarContainer" class="calendar-container">
            <div id="out">
                <div id="in">
                    <div id="div-title">
                        <h1>프로젝트</h1>
                    </div>
                    &nbsp;&nbsp;<p class="title"></p><hr>
                    &nbsp;&nbsp;<p class="dept"></p><hr>
                    &nbsp;&nbsp;<p class="employee"></p><br><hr>
                    &nbsp;&nbsp;상태 : <input type="text" name="stateANo" id="stateANo"  placeholder="1:등록, 2:중지, 3:해산">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <p id="pModify">수정일 : </p>
                    <hr>
                    <h2>내용</h2>
                    <textarea name="content" id="projectContent" ></textarea><br>
                    <div id="div-submit">
                        <button id="submitButton" onclick="f01();">수정하기</button>
                    </div>
                </div>
            </div>
            </div>
        
            <div id="listContainer" class="list-container">
            <!-- 여기에 **서브** 내용을 추가할 수 있습니다 -->
            <%@ include file="/WEB-INF/views/teamRoom/list.jsp" %>
            </div>
    </c:if>

    <c:if test="${sessionScope.loginMemberVo.no ne vo.empNo}">
            <h1>권한이 없습니다.</h1>
            <br><br>
            <a href="http://127.0.0.1:8383/project/projectList">돌아가기</a>
    </c:if>

    <div id="listContainer" class="list-container">
    <!-- 여기에 **서브** 내용을 추가할 수 있습니다 -->
    <%@ include file="/WEB-INF/views/teamRoom/list.jsp" %>
    </div>


    <script src="/js/teamRoom/teamRoom.js"></script>

</body>

</html>

