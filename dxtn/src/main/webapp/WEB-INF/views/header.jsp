<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>미니 프로젝트</title>
<style>
  /* 사이드바 래퍼 스타일 */
  
  #page-wrapper {
    padding-left: 250px;
  }
  
  #sidebar-wrapper {
    position: fixed;
    width: 200px;
    height: 100%;
    margin-left: -250px;
    background: #00BFFF   ;
    overflow-x: hidden;
    overflow-y: auto;
  }
  
  #page-content-wrapper {
    width: 100%;
    padding: 20px;
  }
  /* 사이드바 스타일 */
  
  .sidebar-nav {
    width: 200px;
    margin: 0;
    padding: 0;
    list-style: none;
  }
  
  .sidebar-nav li {
    text-indent: 1.5em;
    line-height: 2.8em;
  }
  
  .sidebar-nav li a {
    display: block;
    text-decoration: none;
    color: #ffffff;
  }
  
  .sidebar-nav li a:hover {
    color: #fff;
    background: rgba(255, 255, 255, 0.2);
  }
  
  .sidebar-nav > .sidebar-brand {
    font-size: 1.3em;
    line-height: 3em;
  }
 
</style>

<!-- Bootstrap CDN -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/latest/css/bootstrap.min.css">
</head>
<body>
   
<!-- 상단 메뉴 부분 -->
<nav class="navbar navbar-expand-lg navbar-dark fixed-top bg-primary">

   <a class="navbar-brand" href="/">Dxtn</a>
   <button class="navbar-toggler" type="button" data-toggle="collapse"
           data-target="#navMenu">
      <span class="navbar-toggler-icon"></span>        
   </button>

   <div class="collapse navbar-collapse" id="navMenu">
      <ul class="navbar-nav">
         <li class="nav-item">
            <a href="boardList.dx" class="nav-link">daily</a>
         </li>
      </ul>
      <ul class="navbar-nav">
         <li class="nav-item">
            <a href="/calendar" class="nav-link">schedule</a>
         </li>
      </ul>
      <ul class="navbar-nav ml-auto">
         <c:choose>
            <c:when test='${session == null }'>
               <li class="nav-item">
                  <a href="loginPage" class="nav-link">로그인</a>
               </li>
               <li class="nav-item">
                  <a href="signUp" class="nav-link">회원가입</a>
               </li>
            </c:when>
            <c:when test="${session != null }">
               <li class="nav-item">
                  <a href="Page" class="nav-link">정보수정</a>
               </li>
               <li class="nav-item">
                  <a href="logout" class="nav-link">로그아웃</a>
               </li>
            </c:when>
         </c:choose>
      </ul>
   </div>

</nav>




</body>
</html>