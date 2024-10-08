<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

    <!DOCTYPE html>
    <html lang="en">

    <head>
      <meta charset="UTF-8">

      
    <script src='https://cdn.jsdelivr.net/npm/fullcalendar@6.1.14/index.global.min.js'></script>
    <script>

      document.addEventListener('DOMContentLoaded', function() {
        var calendarEl = document.getElementById('calendarContainer');
        var calendar = new FullCalendar.Calendar(calendarEl, {
          initialView: 'dayGridMonth'
        });
        calendar.render();
      });

    </script>

      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>TEAM ROOM</title>
      <link rel="stylesheet" href="/css/teamRoom/teamRoom.css">
      <link rel="stylesheet" href="/css/teamRoom/list.css">
      <link rel="stylesheet" href="/css/teamRoom/sidebar.css">
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
        <!-- 여기에 **본문** 내용을 추가할 수 있습니다 -->
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
