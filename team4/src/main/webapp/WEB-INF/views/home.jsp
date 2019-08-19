<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>

  <head>

    <title>YaYoung</title>

    <meta name="viewport" content="width=device-width, initial-scale=1.0">

      <style>

          body {

              padding:0;

              margin:0;

 

              background-image: url(3.jpg); //이미지 경로

              width: 100%; //가로 폭

              height: 100%; // 세로폭

              overflow: hidden; // 범위를 넘엇을시 넘는 영역 숨김

              background-position: 0 0; // 시작위치

              background-repeat: no-repeat; // 배경화면 반복

              background-attachment: fixed; // 배경화면 스크롤시 고정

              background-size: cover; // 배경화면 비율유지

              position: relative; // 위치지정

              overflow-y: auto; //스크롤

          }

          aside{

              width:200px;

              height:3000px;

              position:fixed;

              background:#FFFF96;

              color:white;

              overflow:hidden;

              float:left;

          }

          nav{

              margin-left:200px;

              width:100%;

              height:50px;

              background:white;

          }

          section{

              margin-top:100px;

              margin-left:300px;

              margin-right:500px;

              margin-bottom:100px;

              background:white;

          }

          .text{

              background:#000000;

              color:white;

              height:50px;

              padding:10px;

              vertical-align:middle;

          }

      </style>

  </head>
  <body>

      <aside>
      	<br><br><br><br><br><br><br>
      	
      		<a href="login/login_tc">선생님 로그인</a>
      		<a href="login/login_st">학생 로그인</a>
      		<br>
      		<a href="join/join_tc">선생님 회원가입</a>
      		<a href="join/join_st">학생 회원가입</a>
      	
      </aside>

      <nav>상단 메뉴입니다.</nav>

      <section>

          
 

          

      </section>

      <nav>하단 메뉴</nav>
      

  </body>

</html>
