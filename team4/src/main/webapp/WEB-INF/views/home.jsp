<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<title>YaYoung</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins">
<style>

body,h1,h2,h3,h4,h5 {font-family: "Poppins", sans-serif}

body {font-size:16px;}

.w3-half img{margin-bottom:-6px;margin-top:16px;opacity:0.8;cursor:pointer}

.w3-half img:hover{opacity:1}

ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: yellow;
}


li {
    float: left;
}

li a, .dropbtn {
    display: inline-block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

li a:hover, .dropdown:hover .dropbtn {
    background-color: red;
}

li.dropdown {
    display: inline-block;
}

li.right {
	margin-left: 60%;
}



li.active {
	background-color: gray;
	
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
    text-align: left;
}

a.active {
	background-color: #66B2FF;
}

.dropdown-content a:hover {background-color: #f1f1f1}

.dropdown:hover .dropdown-content {
    display: block;
}

main {
	width: 100%;
}

</style>
<body>

<!-- Sidebar/menu -->

<nav class="w3-sidebar w3-yellow w3-collapse w3-top w3-large w3-padding" style="z-index:3;width:300px;font-weight:bold;" id="mySidebar"><br>

  <a href="javascript:void(0)" onclick="w3_close()" class="w3-button w3-hide-large w3-display-topleft" style="width:100%;font-size:22px">Close Menu</a>

  <div class="w3-container">

    <h3 class="w3-padding-64"><b>YaYoung<br></b></h3>

  </div>

  <div class="w3-bar-block">

    <a href="#aa" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">강의등록</a> 

    <a href="#bb" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">과제등록</a> 

    <a href="#cc" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">작문답변</a> 

    <a href="#dd" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Q&A</a> 

    <a href="#ee" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">학생관리</a> 

    <a href="#ff" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">강의관리</a>
	
	<a href="#gg" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">노트</a>
	 
	<a href="#hh" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">F&A</a>
  </div>

</nav>

<!-- Top menu on small screens -->

<header class="w3-container w3-top w3-hide-large w3-yellow w3-xlarge w3-padding">

  <a href="javascript:void(0)" class="w3-button w3-yellow w3-margin-right" onclick="w3_open()">☰</a>

  <span>YaYoung</span>

</header>

 

<!-- Overlay effect when opening sidebar on small screens -->

<div class="w3-overlay w3-hide-large" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

 

<!-- !PAGE CONTENT! -->

<div class="w3-main" style="margin-left:340px;margin-right:40px">

 

  <!-- Header -->

  <div class="w3-container" style="margin-top:80px" id="showcase">

    <h1 class="w3-jumbo"><b>영어 학습 전문</b></h1>

    <h1 class="w3-xxxlarge w3-text-red"><b>인기 강의</b></h1>

    
  </div>


<!-- Navbar -->
<div class="w3-top">
 <ul>
  <li><a href=".">YaYoung</a></li>
  
  <c:if test="${loginId_st != null}">
  <li><a href="">장바구니</a></li>
  <li><a href="">쿠폰</a></li>
  </c:if>
  
  <c:if test="${sessionScope.admin_userid != null}">
  	<li><a href="${path}/admin/manage_member">회원관리</a></li>
  </c:if>

  <c:if test="${loginId_tc == null && loginId_st == null}">
	  <li class="dropdown right">
	    <a href="javascript:void(0)" class="dropbtn">로그인</a>
	    <div class="dropdown-content">
	      <a href="login/login_tc">선생님로그인</a>
	      <a href="login/login_st">학생로그인</a>
	    </div>
	  </li>
	  <li class="dropdown">
	    <a href="javascript:void(0)" class="dropbtn">회원가입</a>
	    <div class="dropdown-content">
	      <a href="join/join_tc">선생님</a>
	      <a href="join/join_st">학생</a>
	    </div>
	  </li>
  </c:if>
  <c:if test="${sessionScope.userid != null}">
  	<li class="dropdown">
	    <a href="javascript:void(0)" class="dropbtn">회원정보</a>
	    <div class="dropdown-content">
  			<a href="">정보수정</a>
  			<a href="">로그아웃</a>
  		</div>
  	</li>		
  </c:if>
  <c:if test="${sessionScope.admin_userid != null}">
  	<li class="dropdown right">
	    <a href="javascript:void(0)" class="dropbtn">관리자모드</a>
	    <div class="dropdown-content">
  			<a href="${path}/admin/logout">로그아웃</a>
  		</div>
  	</li>		
  </c:if>
</ul>
 <!--
  <div class="w3-bar w3-red w3-card w3-left-align w3-large">
    <a class="w3-bar-item w3-button w3-hide-medium w3-hide-large w3-right w3-padding-large w3-hover-white w3-large w3-red" href="javascript:void(0);" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
    <a href="." class="w3-bar-item w3-button w3-padding-large w3-white">Home</a>
    <a href="#" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">Link 1</a>
    <a href="#" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">Link 2</a>
	<a href="#" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">Link 3</a>
	<a href="#" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">Link 4</a>
</div>

  <!-- Navbar on small screens -->
  <!-- <div id="navDemo" class="w3-bar-block w3-white w3-hide w3-hide-large w3-hide-medium w3-large">
    <a href="#" class="w3-bar-item w3-button w3-padding-large">Link 1</a>
    <a href="#" class="w3-bar-item w3-button w3-padding-large">Link 2</a>
    <a href="#" class="w3-bar-item w3-button w3-padding-large">Link 3</a>
    <a href="#" class="w3-bar-item w3-button w3-padding-large">Link 4</a>
  </div> -->
</div>


<script>
// Used to toggle the menu on small screens when clicking on the menu button
function myFunction() {
  var x = document.getElementById("navDemo");
  if (x.className.indexOf("w3-show") == -1) {
    x.className += " w3-show";
  } else { 
    x.className = x.className.replace(" w3-show", "");
  }
}
</script>

</body>
</html>

