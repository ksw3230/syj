<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
 <title>강의등록</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins">
<c:set var="path" value="${pageContext.request.contextPath}"/>
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
    background-color: #ffd11a;
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

li.login {
	margin-left: 52%;
}

li.login2 {
	margin-left: 45%;
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

.button {
        border: none;
        width: 40px;
        height: 40px;
        cursor: pointer;
      }
</style>
<script src="../resources/js/jquery-3.4.1.js"></script>
<script>
	$(document).ready(function(){
    	   
       $('.basket').on('click', basket)   
       $('.buy').on('click', function(){
    	   var n = $(this).attr('inum');
    	   buy(n);
       })
       $('.button').on('click', function(){
    	   var n = $('#category>option:selected').val();
    	   button(n);
       })
    })
       
   	function basket() {
		var ins_num = $('#ins_num').val();
		
		$.ajax({
			url:'basket',
			type:'get',
			data:{ins_num:ins_num},
			success:function(){
				alert('장바구니 담기 성공');
			},
			error:function(){
				alert('장바구니 담기 실패');	
			}
		});
	}
       
    function buy(n) {
    	// 구매 버튼을 누르면 강의 정보를 가지고 온 후 팝업창이 열려야함
    	var ins_num = n;
    	var url = "../suc/BuyForm?ins_num="+ins_num;
    	var name = "BuyForm";
    	var option = "width = 500, height = 500, top = 100, left = 200, location = no"
    	window.open(url, name, option);
   	  }
    
    function button(n) {
		var ins_cate = n;
		
		alert(n);
	}

</script>
<body>

<!-- Sidebar/menu -->

<nav class="w3-sidebar w3-yellow w3-collapse w3-top w3-large w3-padding" style="z-index:3;width:300px;font-weight:bold;" id="mySidebar"><br>

  <a href="javascript:void(0)" onclick="w3_close()" class="w3-button w3-hide-large w3-display-topleft" style="width:100%;font-size:22px">Close Menu</a>

  <div class="w3-container">

    <h3 class="w3-padding-64"><b>YaYoung<br></b></h3>

  </div>

<c:if test="${loginId_tc != null}">
  <div class="w3-bar-block">

    <a href="insertClass" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">강의등록</a> 

    <a href="../lecture/insertHW" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">과제등록</a> 

    <a href="" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">작문답변</a> 

    <a href="" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Q&A</a> 

    <a href="" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">학생관리</a> 

    <a href="" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">강의관리</a>
	
	<a href="" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">노트</a>
	 
	<a href="" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">F&A</a>
  </div>
</c:if>

<c:if test="${loginId_st != null}">
  <div class="w3-bar-block">

    <a href="" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">노트</a> 

    <a href="" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">내 강의실</a> 

    <a href="../voca/voca_home" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">단어장</a> 

    <a href="" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">발음교정</a> 

    <a href="" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">오답정리</a> 

    <a href="" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">과제</a>
	
	<a href="classList" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">강의검색</a>
	 
	<a href="" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">F&A</a>
  </div>
</c:if>

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
  	<div>
  		<select id="category">
  			<option value="초급">초급</option>
  			<option value="중급">중급</option>
  			<option value="고급">고급</option>
  		</select>
  		<input type="text" placeholder="강의검색" id="text">
  		<input type="image" src="../resources/images/button.jpg" class="button">
  	</div>
 	 
	  	<table width="500">
	  		<tr>
	  			<th>강의 제목</th>
	  			<th>강의 등록일</th>
	  			<th>강사 이름</th>
	  			<th>강의 가격</th>
	  		</tr>
	  		<c:forEach var="list" items="${list}">
	  		<tr id="list">
	  			<td>
	  				<input type="hidden" name="ins_num" id="ins_num" value="${list.ins_num }">
	  				${list.ins_title}
	  			</td>
	  			<td>${list.ins_date}</td>
	  			<td>${list.tc_name}</td>
	  			<td>${list.ins_price}</td>
	  			<td>
	  				<input type="button" value="장바구니" class="basket" inum="${list.ins_num }">
	  				<input type="button" value="바로구매" class="buy" inum="${list.ins_num }">
	  			</td> 			
	  		</tr>
	  		</c:forEach>
	  	</table>   
  </div>


<!-- Navbar -->
<div class="w3-top">
 <ul>
  <li><a href="../">YaYoung</a></li>
  
  <c:if test="${loginId_st != null}">
  <li><a href="">장바구니</a></li>
  <li><a href="">쿠폰</a></li>
  </c:if>
  
  <c:if test="${loginId_tc != null}">
  <li><a href=""></a></li>
  <li><a href=""></a></li>
  </c:if>
  
  <c:if test="${loginId_tc != null && loginId_st == null}">
  	<li class="login">
	      <a href="../login/logout">로그아웃</a>
	       <a href="../join/infoUpFormTc">개인 정보 수정</a>
	 </li>		
  </c:if>

  <c:if test="${loginId_tc == null && loginId_st != null}">
  	<li class="dropdown login2">
	     <a href="../login/logout">로그아웃</a>
         <a href="../Mypage/MyPage">마이페이지</a>
    </li>		
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
  
  
</ul>
 
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

