<!DOCTYPE html>
<html lang="en">
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <style>
      @import url('https://fonts.googleapis.com/css2?family=Jua&display=swap');
      @import url('https://fonts.googleapis.com/css2?family=Comfortaa:wght@300..700&family=Jua&display=swap');
      @import url('https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR&display=swap');
    </style>

    <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link rel="stylesheet" type="text/css" href="/css/homeUtil/footer.css">
      <link rel="stylesheet" type="text/css" href="/css/homeUtil/header.css">
      <link rel="stylesheet" type="text/css" href="/css/homeUtil/popUpBoard.css">
      <link rel="stylesheet" type="text/css" href="/css/homeUtil/sidebar.css">
      <link rel="stylesheet" type="text/css" href="/css/homeUtil/teamRoom.css">
      <script defer src="../js/Util/sidebar.js"></script>
      <title>사이트맵</title>
    </head>

    <body id="container">
      <div id="warp">
        <%@ include file="/WEB-INF/views/homeUtil/header.jsp" %>
        <%@ include file="/WEB-INF/views/homeUtil/nav.jsp" %>
            <section>

            <a href="/test/main">할일 페이지</a>
            <br>
            <a href="/test/person">개인 페이지</a>
            <br>
            <a href="/message/messageWrite">메시지 보내기</a>
            <br>
            <a href="/message/messageSendList">보낸 메시지 함</a>
            <br>
            <a href="/message/messageReceiveList">받은 메시지 함</a>
            <br>
            <a href="/message/messageReceiveDeleteList">삭제된 받은 메시지 함</a>
            <br>
            <a href="/message/messageSendDeleteList">삭제된 보낸 메시지 함</a>

            <h1>URL 모음</h1>
            <table border="1">
              <tr>
                <td>이름</td>
                <td>METHOD</td>
                <td>URL</td>
                <td>기능</td>
                <td>링크</td>
              </tr>
              <tr>
                <td rowspan="5">김제민</td>
                <td>GET</td>
                <td>http://127.0.0.1:8383/project</td>
                <td>프로젝트 메인</td>
                <td><a href="http://127.0.0.1:8383/project">링크</a></td>
              </tr>
              <tr>
                <td>GET, POST</td>
                <td>http://127.0.0.1:8383/projectInsert</td>
                <td>프로젝트 작성</td>
                <td><a href="http://127.0.0.1:8383/projectInsert">링크</a></td>
              </tr>
              <tr>
                <td>GET, POST</td>
                <td>http://127.0.0.1:8383/projectModify</td>
                <td>프로젝트 수정</td>
                <td><a href="http://127.0.0.1:8383/projectModify">링크</a></td>
              </tr>
              <tr>
                <td>GET</td>
                <td>http://127.0.0.1:8383/projectList</td>
                <td>프로젝트 조회</td>
                <td><a href="http://127.0.0.1:8383/projectList">링크</a></td>
              </tr>
              <tr>
                <td>GET</td>
                <td>http://127.0.0.1:8383/detail</td>
                <td>프로젝트 상세조회</td>
                <td><a href="http://127.0.0.1:8383/detail">링크</a></td>
              </tr>
            </table>

            <br>
            <br>

            <table border="1">
              <tr>
                <td>이름</td>
                <td>METHOD</td>
                <td>URL</td>
                <td>기능</td>
                <td>링크</td>
              </tr>
              <tr>
                <td rowspan="4">윤혜연</td>
                <td>GET, POST</td>
                <td>http://127.0.0.1:8383/projectInsert</td>
                <td>프로젝트 작성</td>
                <td><a href="http://127.0.0.1:8383/projectInsert">링크</a></td>
              </tr>
              <tr>
                <td>GET, POST</td>
                <td>http://127.0.0.1:8383/projectModify</td>
                <td>프로젝트 수정</td>
                <td><a href="http://127.0.0.1:8383/projectModify">링크</a></td>
              </tr>
              <tr>
                <td>GET</td>
                <td>http://127.0.0.1:8383/projectList</td>
                <td>프로젝트 조회</td>
                <td><a href="http://127.0.0.1:8383/projectList">링크</a></td>
              </tr>
              <tr>
                <td>GET</td>
                <td>http://127.0.0.1:8383/detail</td>
                <td>프로젝트 상세조회</td>
                <td><a href="http://127.0.0.1:8383/detail">링크</a></td>
              </tr>
            </table>

            <br>
            <br>

            <table border="1">
              <thead>
                <tr>
                  <th>손지욱</th>
                  <th>메소드</th>
                  <th>URL</th>
                  <th>기능</th>
                  <th>링크</th>
                </tr>
              </thead>
              <tbody>
                <!-- 부서 -->
                <tr>
                  <td rowspan="11">부서</td>
                  <td>GET</td>
                  <td>adminDeptMngr/list</td>
                  <td>부서 목록 페이지</td>
                  <td><a href="http://127.0.0.1:8383/adminDeptMngr/list">링크</a></td>
                </tr>
                <tr>
                  <td>GET</td>
                  <td>adminDeptMngr/listData</td>
                  <td>부서 목록 데이터</td>
                  <td><a href="http://127.0.0.1:8383/adminDeptMngr/listData">링크</a></td>
                </tr>
                <tr>
                  <td>POST</td>
                  <td>adminDeptMngr/search</td>
                  <td>부서 검색 페이지</td>
                  <td><a href="http://127.0.0.1:8383/adminDeptMngr/search">링크</a></td>
                </tr>
                <tr>
                  <td>POST</td>
                  <td>adminDeptMngr/searchData</td>
                  <td>부서 검색 목록 데이터</td>
                  <td><a href="http://127.0.0.1:8383/adminDeptMngr/searchData">링크</a></td>
                </tr>
                <tr>
                  <td>GET</td>
                  <td>adminDeptMngr/enrollDiv</td>
                  <td>부서 등록 페이지</td>
                  <td><a href="http://127.0.0.1:8383/adminDeptMngr/enrollDiv">링크</a></td>
                </tr>
                <tr>
                  <td>POST</td>
                  <td>adminDeptMngr/enrollDivData</td>
                  <td>부서 등록 데이터</td>
                  <td><a href="http://127.0.0.1:8383/adminDeptMngr/enrollDivData">링크</a></td>
                </tr>
                <tr>
                  <td>GET</td>
                  <td>adminDeptMngr/edit</td>
                  <td>부서 수정 페이지</td>
                  <td><a href="http://127.0.0.1:8383/adminDeptMngr/edit">링크</a></td>
                </tr>
                <tr>
                  <td>POST</td>
                  <td>adminDeptMngr/edit</td>
                  <td>부서 수정 데이터</td>
                  <td><a href="http://127.0.0.1:8383/adminDeptMngr/edit">링크</a></td>
                </tr>
                <tr>
                  <td>GET</td>
                  <td>adminDeptMngr/detail</td>
                  <td>부서 상세 페이지</td>
                  <td><a href="http://127.0.0.1:8383/adminDeptMngr/detail">링크</a></td>
                </tr>
                <tr>
                  <td>GET</td>
                  <td>adminDeptMngr/detailDivData</td>
                  <td>부서 상세 데이터</td>
                  <td><a href="http://127.0.0.1:8383/adminDeptMngr/detailDivData">링크</a></td>
                </tr>
                <tr>
                  <td>GET</td>
                  <td>adminDeptMngr/detailDivMemData</td>
                  <td>부서 상세 구성원 데이터</td>
                  <td><a href="http://127.0.0.1:8383/adminDeptMngr/detailDivMemData">링크</a></td>
                </tr>

                <!-- 사원 -->
                <tr>
                  <td rowspan="18">사원</td>
                  <td>GET</td>
                  <td>adminEmpMngr/list</td>
                  <td>사원 목록 페이지</td>
                  <td><a href="http://127.0.0.1:8383/adminEmpMngr/list">링크</a></td>
                </tr>
                <tr>
                  <td>GET</td>
                  <td>adminEmpMngr/listData</td>
                  <td>사원 목록 데이터</td>
                  <td><a href="http://127.0.0.1:8383/adminEmpMngr/listData">링크</a></td>
                </tr>
                <tr>
                  <td>POST</td>
                  <td>adminEmpMngr/search</td>
                  <td>사원 검색 페이지</td>
                  <td><a href="http://127.0.0.1:8383/adminEmpMngr/search">링크</a></td>
                </tr>
                <tr>
                  <td>POST</td>
                  <td>adminEmpMngr/searchData</td>
                  <td>사원 검색 데이터</td>
                  <td><a href="http://127.0.0.1:8383/adminEmpMngr/searchData">링크</a></td>
                </tr>
                <tr>
                  <td>GET</td>
                  <td>adminEmpMngr/detail</td>
                  <td>사원 상세 페이지</td>
                  <td><a href="http://127.0.0.1:8383/adminEmpMngr/detail">링크</a></td>
                </tr>
                <tr>
                  <td>GET</td>
                  <td>adminEmpMngr/detailData</td>
                  <td>사원 상세 데이터</td>
                  <td><a href="http://127.0.0.1:8383/adminEmpMngr/detailData">링크</a></td>
                </tr>
                <tr>
                  <td>GET</td>
                  <td>adminEmpMngr/enrollEmp</td>
                  <td>사원 등록 페이지</td>
                  <td><a href="http://127.0.0.1:8383/adminEmpMngr/enrollEmp">링크</a></td>
                </tr>
                <tr>
                  <td>POST</td>
                  <td>adminEmpMngr/enrollEmpData</td>
                  <td>사원 등록 데이터</td>
                  <td><a href="http://127.0.0.1:8383/adminEmpMngr/enrollEmpData">링크</a></td>
                </tr>
                <tr>
                  <td>GET</td>
                  <td>adminEmpMngr/edit</td>
                  <td>사원 수정 페이지</td>
                  <td><a href="http://127.0.0.1:8383/adminEmpMngr/edit">링크</a></td>
                </tr>
                <tr>
                  <td>GET</td>
                  <td>adminEmpMngr/editData</td>
                  <td>사원 수정 데이터</td>
                  <td><a href="http://127.0.0.1:8383/adminEmpMngr/editData">링크</a></td>
                </tr>
                <tr>
                  <td>GET</td>
                  <td>adminEmpMngr/getDivCode</td>
                  <td>사원 수정 팀 목록 데이터</td>
                  <td><a href="http://127.0.0.1:8383/adminEmpMngr/getDivCode">링크</a></td>
                </tr>
                <tr>
                  <td>GET</td>
                  <td>adminEmpMngr/editPostData</td>
                  <td>사원 수정 테이터 가져오기</td>
                  <td><a href="http://127.0.0.1:8383/adminEmpMngr/editPostData">링크</a></td>
                </tr>
                <tr>
                  <td>POST</td>
                  <td>adminEmpMngr/updateEmpData</td>
                  <td>사원 수정 업데이트 데이터</td>
                  <td><a href="http://127.0.0.1:8383/adminEmpMngr/updateEmpData">링크</a></td>
                </tr>
              </tbody>
            </table>

            <br>
            <br>

            <table border="1">
              <thead>
                <tr>
                  <th>주선기</th>
                  <th>메소드</th>
                  <th>URL</th>
                  <th>기능</th>
                  <th>링크</th>
                </tr>
              </thead>
              <tbody>
                <!-- 결재 (SIGN) -->
                <tr>
                  <td rowspan="25">결재 (SIGN)</td>
                  <td>GET</td>
                  <td>sign/write</td>
                  <td>결재 신청 (화면)</td>
                  <td><a href="http://127.0.0.1:8383/sign/write">링크</a></td>
                </tr>
                <tr>
                  <td>POST</td>
                  <td>sign/write</td>
                  <td>결재 신청</td>
                  <td><a href="http://127.0.0.1:8383/sign/write">링크</a></td>
                </tr>
                <tr>
                  <td>GET</td>
                  <td>sign/list</td>
                  <td>결재 목록 조회 (화면)</td>
                  <td><a href="http://127.0.0.1:8383/sign/list">링크</a></td>
                </tr>
                <tr>
                  <td>GET</td>
                  <td>sign/detail</td>
                  <td>결재 상세 조회 (화면)</td>
                  <td><a href="http://127.0.0.1:8383/sign/detail">링크</a></td>
                </tr>
                <tr>
                  <td>GET</td>
                  <td>api/sign/employeeList</td>
                  <td>직원 전체 목록 조회</td>
                  <td><a href="http://127.0.0.1:8383/api/sign/employeeList">링크</a></td>
                </tr>
                <tr>
                  <td>PUT</td>
                  <td>api/sign/approve</td>
                  <td>결재</td>
                  <td><a href="http://127.0.0.1:8383/api/sign/approve">링크</a></td>
                </tr>
                <tr>
                  <td>GET</td>
                  <td>api/sign/detail</td>
                  <td>결재 상세 조회</td>
                  <td><a href="http://127.0.0.1:8383/api/sign/detail">링크</a></td>
                </tr>
                <tr>
                  <td>GET</td>
                  <td>api/sign/approverList</td>
                  <td>결재자 목록 조회</td>
                  <td><a href="http://127.0.0.1:8383/api/sign/approverList">링크</a></td>
                </tr>
                <tr>
                  <td>GET</td>
                  <td>api/sign/approverDetail</td>
                  <td>결재자 상세 조회</td>
                  <td><a href="http://127.0.0.1:8383/api/sign/approverDetail">링크</a></td>
                </tr>
                <tr>
                  <td>GET</td>
                  <td>api/sign/employee</td>
                  <td>결재 목록 조회 (신청자 입장) (동적 쿼리)</td>
                  <td><a href="http://127.0.0.1:8383/api/sign/employee">링크</a></td>
                </tr>
                <tr>
                  <td>GET</td>
                  <td>api/sign/approver</td>
                  <td>결재 목록 조회 (결재자 입장) (동적 쿼리)</td>
                  <td><a href="http://127.0.0.1:8383/api/sign/approver">링크</a></td>
                </tr>
                <tr>
                  <td>GET</td>
                  <td>api/sign/reference</td>
                  <td>결재 목록 조회 (참조자 입장) (동적 쿼리)</td>
                  <td><a href="http://127.0.0.1:8383/api/sign/reference">링크</a></td>
                </tr>
                <tr>
                  <td>GET</td>
                  <td>api/sign/wait</td>
                  <td>결재 진행 목록 조회 (신청자 입장)</td>
                  <td><a href="http://127.0.0.1:8383/api/sign/wait">링크</a></td>
                </tr>
                <tr>
                  <td>GET</td>
                  <td>api/sign/approval</td>
                  <td>결재 완료 목록 조회 (신청자 입장)</td>
                  <td><a href="http://127.0.0.1:8383/api/sign/approval">링크</a></td>
                </tr>
                <tr>
                  <td>GET</td>
                  <td>api/sign/return</td>
                  <td>결재 반려 목록 조회 (신청자 입장)</td>
                  <td><a href="http://127.0.0.1:8383/api/sign/return">링크</a></td>
                </tr>
                <tr>
                  <td>GET</td>
                  <td>api/sign/list</td>
                  <td>결재 전체 목록 조회 (신청자 입장)</td>
                  <td><a href="http://127.0.0.1:8383/api/sign/list">링크</a></td>
                </tr>
                <tr>
                  <td>GET</td>
                  <td>api/sign/approver/doSign</td>
                  <td>결재 대기 목록 조회 (결재자 입장)</td>
                  <td><a href="http://127.0.0.1:8383/api/sign/approver/doSign">링크</a></td>
                </tr>
                <tr>
                  <td>GET</td>
                  <td>api/sign/approver/wait</td>
                  <td>결재 진행 목록 조회 (결재자 입장)</td>
                  <td><a href="http://127.0.0.1:8383/api/sign/approver/wait">링크</a></td>
                </tr>
                <tr>
                  <td>GET</td>
                  <td>api/sign/approver/approval</td>
                  <td>결재 완료 목록 조회 (결재자 입장)</td>
                  <td><a href="http://127.0.0.1:8383/api/sign/approver/approval">링크</a></td>
                </tr>
                <tr>
                  <td>GET</td>
                  <td>api/sign/approver/return</td>
                  <td>결재 반려 목록 조회 (결재자 입장)</td>
                  <td><a href="http://127.0.0.1:8383/api/sign/approver/return">링크</a></td>
                </tr>
                <tr>
                  <td>GET</td>
                  <td>api/sign/approver/list</td>
                  <td>결재 전체 목록 조회 (결재자 입장)</td>
                  <td><a href="http://127.0.0.1:8383/api/sign/approver/list">링크</a></td>
                </tr>
                <tr>
                  <td>GET</td>
                  <td>api/sign/reference/wait</td>
                  <td>결재 진행 목록 조회 (참조자 입장)</td>
                  <td><a href="http://127.0.0.1:8383/api/sign/reference/wait">링크</a></td>
                </tr>
                <tr>
                  <td>GET</td>
                  <td>api/sign/reference/approval</td>
                  <td>결재 완료 목록 조회 (참조자 입장)</td>
                  <td><a href="http://127.0.0.1:8383/api/sign/reference/approval">링크</a></td>
                </tr>
                <tr>
                  <td>GET</td>
                  <td>api/sign/reference/return</td>
                  <td>결재 반려 목록 조회 (참조자 입장)</td>
                  <td><a href="http://127.0.0.1:8383/api/sign/reference/return">링크</a></td>
                </tr>
                <tr>
                  <td>GET</td>
                  <td>api/sign/reference/list</td>
                  <td>결재 전체 목록 조회 (참조자 입장)</td>
                  <td><a href="http://127.0.0.1:8383/api/sign/reference/list">링크</a></td>
                </tr>

                <!-- 휴가 (LEAVE) -->
                <tr>
                  <td rowspan="17">휴가 (LEAVE)</td>
                  <td>GET</td>
                  <td>leave/write</td>
                  <td>휴가 신청 (화면)</td>
                  <td><a href="http://127.0.0.1:8383/leave/write">링크</a></td>
                </tr>
                <tr>
                  <td>POST</td>
                  <td>leave/write</td>
                  <td>휴가 신청</td>
                  <td><a href="http://127.0.0.1:8383/leave/write">링크</a></td>
                </tr>
                <tr>
                  <td>GET</td>
                  <td>leave/list</td>
                  <td>휴가 목록 조회 (화면)</td>
                  <td><a href="http://127.0.0.1:8383/leave/list">링크</a></td>
                </tr>
                <tr>
                  <td>GET</td>
                  <td>leave/detail</td>
                  <td>휴가 상세 조회 (화면)</td>
                  <td><a href="http://127.0.0.1:8383/leave/detail">링크</a></td>
                </tr>
                <tr>
                  <td>GET</td>
                  <td>api/leave/detail</td>
                  <td>휴가 상세 조회</td>
                  <td><a href="http://127.0.0.1:8383/api/leave/detail">링크</a></td>
                </tr>
                <tr>
                  <td>GET</td>
                  <td>api/leave/approverDetail</td>
                  <td>휴가 승인자 상세 조회</td>
                  <td><a href="http://127.0.0.1:8383/api/leave/approverDetail">링크</a></td>
                </tr>
                <tr>
                  <td>GET</td>
                  <td>api/leave/approverList</td>
                  <td>휴가 승인자 목록 조회</td>
                  <td><a href="http://127.0.0.1:8383/api/leave/approverList">링크</a></td>
                </tr>
                <tr>
                  <td>PUT</td>
                  <td>api/leave/approve</td>
                  <td>휴가 승인</td>
                  <td><a href="http://127.0.0.1:8383/api/leave/approve">링크</a></td>
                </tr>
                <tr>
                  <td>GET</td>
                  <td>api/leave</td>
                  <td>휴가 목록 조회 (동적 쿼리)</td>
                  <td><a href="http://127.0.0.1:8383/api/leave">링크</a></td>
                </tr>
                <tr>
                  <td>GET</td>
                  <td>api/leave/wait</td>
                  <td>휴가 승인 진행 목록 조회 (신청자 입장)</td>
                  <td><a href="http://127.0.0.1:8383/api/leave/wait">링크</a></td>
                </tr>
                <tr>
                  <td>GET</td>
                  <td>api/leave/approval</td>
                  <td>휴가 승인 목록 조회 (신청자 입장)</td>
                  <td><a href="http://127.0.0.1:8383/api/leave/approval">링크</a></td>
                </tr>
                <tr>
                  <td>GET</td>
                  <td>api/leave/return</td>
                  <td>휴가 반려 목록 조회 (신청자 입장)</td>
                  <td><a href="http://127.0.0.1:8383/api/leave/return">링크</a></td>
                </tr>
                <tr>
                  <td>GET</td>
                  <td>api/leave/list</td>
                  <td>휴가 전체 목록 조회 (신청자 입장)</td>
                  <td><a href="http://127.0.0.1:8383/api/leave/list">링크</a></td>
                </tr>
                <tr>
                  <td>GET</td>
                  <td>api/leave/approver/wait</td>
                  <td>휴가 승인 진행 목록 조회 (승인자 입장)</td>
                  <td><a href="http://127.0.0.1:8383/api/leave/approver/wait">링크</a></td>
                </tr>
                <tr>
                  <td>GET</td>
                  <td>api/leave/approver/approval</td>
                  <td>휴가 승인 목록 조회 (승인자 입장)</td>
                  <td><a href="http://127.0.0.1:8383/api/leave/approver/approval">링크</a></td>
                </tr>
                <tr>
                  <td>GET</td>
                  <td>api/leave/approver/return</td>
                  <td>휴가 반려 목록 조회 (승인자 입장)</td>
                  <td><a href="http://127.0.0.1:8383/api/leave/approver/return">링크</a></td>
                </tr>
                <tr>
                  <td>GET</td>
                  <td>api/leave/approver/list</td>
                  <td>휴가 전체 목록 조회 (승인자 입장)</td>
                  <td><a href="http://127.0.0.1:8383/api/leave/approver/list">링크</a></td>
                </tr>

                <!-- 출장 (BUSINESS_TRIP) -->
                <tr>
                  <td rowspan="18">출장 (BUSINESS_TRIP)</td>
                  <td>GET</td>
                  <td>businessTrip/write</td>
                  <td>출장 신청 (화면)</td>
                  <td><a href="http://127.0.0.1:8383/businessTrip/write">링크</a></td>
                </tr>
                <tr>
                  <td>POST</td>
                  <td>businessTrip/write</td>
                  <td>출장 신청</td>
                  <td><a href="http://127.0.0.1:8383/businessTrip/write">링크</a></td>
                </tr>
                <tr>
                  <td>GET</td>
                  <td>businessTrip/list</td>
                  <td>출장 목록 조회 (화면)</td>
                  <td><a href="http://127.0.0.1:8383/businessTrip/list">링크</a></td>
                </tr>
                <tr>
                  <td>GET</td>
                  <td>businessTrip/detail</td>
                  <td>출장 상세 조회 (화면)</td>
                  <td><a href="http://127.0.0.1:8383/businessTrip/detail">링크</a></td>
                </tr>
                <tr>
                  <td>GET</td>
                  <td>api/businessTrip/detail</td>
                  <td>출장 상세 조회</td>
                  <td><a href="http://127.0.0.1:8383/api/businessTrip/detail">링크</a></td>
                </tr>
                <tr>
                  <td>GET</td>
                  <td>api/businessTrip/approverDetail</td>
                  <td>출장 승인자 상세 조회</td>
                  <td><a href="http://127.0.0.1:8383/api/businessTrip/approverDetail">링크</a></td>
                </tr>
                <tr>
                  <td>GET</td>
                  <td>api/businessTrip/approverList</td>
                  <td>출장 승인자 목록 조회</td>
                  <td><a href="http://127.0.0.1:8383/api/businessTrip/approverList">링크</a></td>
                </tr>
                <tr>
                  <td>PUT</td>
                  <td>api/businessTrip/approve</td>
                  <td>출장 승인</td>
                  <td><a href="http://127.0.0.1:8383/api/businessTrip/approve">링크</a></td>
                </tr>
                <tr>
                  <td>GET</td>
                  <td>api/businessTrip</td>
                  <td>출장 목록 조회 (동적 쿼리)</td>
                  <td><a href="http://127.0.0.1:8383/api/businessTrip">링크</a></td>
                </tr>
                <tr>
                  <td>GET</td>
                  <td>api/businessTrip/projectList</td>
                  <td>프로젝트 목록 조회</td>
                  <td><a href="http://127.0.0.1:8383/api/businessTrip/projectList">링크</a></td>
                </tr>
                <tr>
                  <td>GET</td>
                  <td>api/leave/wait</td>
                  <td>출장 승인 진행 목록 조회 (신청자 입장)</td>
                  <td><a href="http://127.0.0.1:8383/api/leave/wait">링크</a></td>
                </tr>
                <tr>
                  <td>GET</td>
                  <td>api/leave/approval</td>
                  <td>출장 승인 목록 조회 (신청자 입장)</td>
                  <td><a href="http://127.0.0.1:8383/api/leave/approval">링크</a></td>
                </tr>
                <tr>
                  <td>GET</td>
                  <td>api/leave/return</td>
                  <td>출장 반려 목록 조회 (신청자 입장)</td>
                  <td><a href="http://127.0.0.1:8383/api/leave/return">링크</a></td>
                </tr>
                <tr>
                  <td>GET</td>
                  <td>api/leave/list</td>
                  <td>출장 전체 목록 조회 (신청자 입장)</td>
                  <td><a href="http://127.0.0.1:8383/api/leave/list">링크</a></td>
                </tr>
                <tr>
                  <td>GET</td>
                  <td>api/leave/approver/wait</td>
                  <td>출장 승인 진행 목록 조회 (승인자 입장)</td>
                  <td><a href="http://127.0.0.1:8383/api/leave/approver/wait">링크</a></td>
                </tr>
                <tr>
                  <td>GET</td>
                  <td>api/leave/approver/approval</td>
                  <td>출장 승인 목록 조회 (승인자 입장)</td>
                  <td><a href="http://127.0.0.1:8383/api/leave/approver/approval">링크</a></td>
                </tr>
                <tr>
                  <td>GET</td>
                  <td>api/leave/approver/return</td>
                  <td>출장 반려 목록 조회 (승인자 입장)</td>
                  <td><a href="http://127.0.0.1:8383/api/leave/approver/return">링크</a></td>
                </tr>
                <tr>
                  <td>GET</td>
                  <td>api/leave/approver/list</td>
                  <td>출장 전체 목록 조회 (승인자 입장)</td>
                  <td><a href="http://127.0.0.1:8383/api/leave/approver/list">링크</a></td>
                </tr>
                <tr>
                  <td rowspan="4">파일 (SIGN_FILE)</td>
                  <td>GET</td>
                  <td>file</td>
                  <td>모든 파일 조회</td>
                  <td><a href="http://127.0.0.1:8383/file">링크</a></td>
                </tr>
                <tr>
                  <td>POST</td>
                  <td>file/upload</td>
                  <td>파일 업로드</td>
                  <td><a href="http://127.0.0.1:8383/file/upload">링크</a></td>
                </tr>
                <tr>
                  <td>GET</td>
                  <td>file/download/{filename:.+}</td>
                  <td>파일 다운로드</td>
                  <td><a href="http://127.0.0.1:8383/file/download/{filename:.+}">링크</a></td>
                </tr>
                <tr>
                  <td>DELETE</td>
                  <td>file/delete/{filename:.+}</td>
                  <td>파일 삭제</td>
                  <td><a href="http://127.0.0.1:8383/file/delete/{filename:.+}">링크</a></td>
                </tr>
              </tbody>
            </table>

              <table border="5">
                <tr>
                  <td>이름</td>
                  <td>METHOD</td>
                  <td>URL</td>
                  <td>기능</td>
                  <td>링크</td>
                </tr>
                <tr>
                  <td rowspan="4">신은지</td>
                  <td>POST</td>
                  <td>http://127.0.0.1:8383/member/login</td>
                  <td>로그인</td>
                  <td><a href="http://127.0.0.1:8383/member/login">링크</a></td>
                </tr>
                <tr>
                  <td>POST</td>
                  <td>http://127.0.0.1:8383/member/join</td>
                  <td>회원가입</td>
                  <td><a href="http://127.0.0.1:8383/member/join">링크</a></td>
                </tr>
                <tr>
                  <td>GET</td>
                  <td>http://127.0.0.1:8383/personal/list</td>
                  <td>기타일정 조회</td>
                  <td><a href="http://127.0.0.1:8383/personal/list">링크</a></td>
                </tr>
                <tr>
                  <td>POST</td>
                  <td>http://127.0.0.1:8383/personal/write</td>
                  <td>기타일정 작성하기</td>
                  <td><a href="http://127.0.0.1:8383/personal/write">링크</a></td>
                </tr>
                <tr>
                  <td>POST</td>
                  <td>http://127.0.0.1:8383/personal/edit</td>
                  <td>기타일정 수정하기</td>
                  <td><a href="http://127.0.0.1:8383/personal/edit">링크</a></td>
                </tr>
                <tr>
                  <td>DELETE</td>
                  <td>http://127.0.0.1:8383/personal/delete</td>
                  <td>기타일정 삭제하기</td>
                  <td><a href="http://127.0.0.1:8383/personal/delete">링크</a></td>
                </tr>
                <tr>
                  <td>GET</td>
                  <td>http://127.0.0.1:8383/personal/detail</td>
                  <td>기타일정 상세조회</td>
                  <td><a href="http://127.0.0.1:8383/personal/detail">링크</a></td>
                </tr>
                <tr>
                  <td>GET</td>
                  <td>http://127.0.0.1:8383/home</td>
                  <td>홈</td>
                  <td><a href="http://127.0.0.1:8383/home">링크</a></td>
                </tr>
              </table>


            </section>
            <%@ include file="/WEB-INF/views/homeUtil/footer.jsp" %>
      </div>

        <button id="sidebarBtn"><span>메뉴</span></button>
    </body>

</html>