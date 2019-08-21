<!-- 
선생님 회원가입
김지수
2019/08/19 
-->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.Calendar"%>    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="../resources/js/jquery-3.4.1.js"></script>
<script>
$(document).ready(function(){
	//id 길이 체크
	$('#tc_id').keyup(function(){
		var checkId = $('#tc_id').val();
		if (checkId.length < 3 || checkId.length > 10){
			var i = '<p>3글자 이상 10글자 이상 입력해주세요.</p>'
			$('#idCheck').html(i);
			return;
		} else {
			$('#idCheck').html('');
		}
		
		
		$.ajax({
			url: 'idCheckTc',
			type: 'post',
			data: {checkId:checkId},
			dataType: 'text',
			success: function(s){
				$('#idCheck').html(s);
			},
			error: function(e){
				alert("아이디 검색 실패");
			}
		});
	});//id 길이 및 중복확인
	
	//비밀번호 길이 체크
	$('#tc_pw').keyup(function(){
		var checkPw = $('#tc_pw').val();
		if (checkPw.length < 3 || checkPw.length > 10){
			var i = '<p>3글자 이상 10글자 이상 입력해주세요.</p>'
			$('#pwLength').html(i);
			return;
		} else {
			$('#pwLength').html('');
		}
	});
	
	$('#tc_pw2').keyup(function(){
		var pw = $('#tc_pw').val();
		var pw2 = $('#tc_pw2').val();
		if (pw != pw2) {
			var j = '<p>비밀번호가 일치하지 않습니다.</p>'
			$('#pwCheck').html(j);
			return;
		} else{
			$('#pwCheck').html('');	
			return;
		}
	});//비밀번호 일치
});

function joinformCheck(){
	var tc_ID = document.getElementById('tc_id');
	var tc_PW = document.getElementById('tc_pw');
	var tc_NAME = document.getElementById('tc_name');
	var tc_DOB = document.getElementById('tc_dob');
	var tc_PHONE = document.getElementById('tc_phone');
	var tc_EMAIL = document.getElementById('tc_email');
	
	if (tc_ID.value == '' || tc_PW.value == '' || tc_NAME == '' || tc_DOB == '' || tc_PHONE == '' || tc_EMAIL == '') {
		alert('필수입력입니다.');
		return false;
	}
	return true;
}

</script>
<style>
div{ margin: auto;}
h1{text-align: center;}
table{margin: 0 auto;}
.but{text-align: center;}
</style>
<title>선생님 회원가입</title>
</head>
<body>
<div>
<h1>[ Sign up for a teacher ]</h1>
<form id="joinform" action="insert_tc" enctype="multipart/form-data" method="POST" onsubmit="return joinformCheck();" >	<!-- enctype="multipart/form-data"  method옆에 적어야 함, 파일만 추가하면 오류 떠서 주석-->
<table>
	<tr>
		<td>아이디</td>
		<td>
			<input type="text" name="tc_id" id="tc_id" size="30">
			<div id="idCheck"></div>
		</td>
	</tr>
	<tr>
		<td>비밀번호</td>
		<td>
			<input type="password" name="tc_pw" id="tc_pw" size="30">
			<div id="pwLength"></div>
		</td>
	</tr>
	<tr>
		<td>비밀번호 확인</td>
		<td>
			<input type="password" id="tc_pw2" size="30">
			<div id="pwCheck"></div>
		</td>
	</tr>
		
	<!-- 사진등록 테이블  -->
	<tr>
		<td>사진 등록</td>
		<td>
			<input type="file" name="pic" id="tc_picname" size="30">
		</td> <!-- name은 컨트롤러의 변수명과 같게 -->
	</tr>
		
	<tr>
		<td>이름</td>
		<td>
			<input type="text" name="tc_name" id="tc_name" size="30">
		</td>
	</tr>
	<tr>
		<td>생년월일</td>
		<td>
			<input type="text" name="tc_dob" id="tc_dob" size="40" placeholder="YYYYMMDD 형식으로 입력해주세요.">
		</td>
	</tr>
	<tr>
		<td>연락처</td>
		<td>
			<input type="tel" name="tc_phone" id="tc_phone" size="40" pattern="[0-9]{3}-[0-9]{4}-[0-9]{4}" required placeholder="000-0000-0000 형식으로 입력해주세요.">
		</td>
	</tr>
	<tr>
		<td>이메일</td>
		<td>
			<input type="email" name="tc_email" id="tc_email" size="30" >
		</td>
	</tr>
	<tr>
		<td class="but" colspan="2">
			<input type="submit" value="가입">
			<input type="reset" value="다시쓰기">
		</td>
	</tr>
</table>
</form>
</div>
</body>
</html>