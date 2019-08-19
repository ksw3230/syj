<!-- 
선생님 회원가입
김지수
2019/08/19 
-->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="../resources/js/jquery-3.4.1.js"></script>
<script>
$(document).ready(function(){
	$('#id').keyup(function(){
		var checkID = $('#id').val();
		if (checkID.length < 3){
			var i = '<p>3글자 이상 입력해주세요.</p>'
			$('#idCheck').html(i);
			return;
		} else {
			$('#idCheck').html('');
		}
		
		$.ajax({
			url: 'idCheck',
			type: 'post',
			data: {checkID:checkID},
			dataType: 'text',
			success: function(s){
				$('#idCheck').html(s);
			},
			error: function(e){
				alert("아이디 검색 실패");
			}
		});
	});//id 길이 및 중복확인
	
	$('#password2').keyup(function(){
		var pw = $('#password').val();
		var pw2 = $('#password2').val();
		if (pw != pw2) {
			var j = '<p>비밀번호가 불일치 합니다.</p>'
			$('#pwCheck').html(j);
			return;
		} else{
			$('#pwCheck').html('');	
			return;
		}
	});//비밀번호 일치
});

function joinformCheck(){
	var personID = document.getElementById('id');
	var personPW = document.getElementById('password');
	var personNAME = document.getElementById('name');
	
	if (personID.value == '' || personPW.value == '') {
		alert('필수입력입니다.');
		return false;
	}
	return true;
}

</script>
<title>선생님 회원가입</title>
</head>
<body>
<form id="joinform" action="join" method="post" onsubmit="return joinformCheck();">
<table border="2">
	<tr>
		<th>아이디</th>
		<td>
			<input type="text" name="id" id="id">
			<div id="idCheck"></div>
		</td>
	</tr>
	<tr>
		<th>비밀번호</th>
		<td><input type="password" name="password" id="password"></td>
	</tr>
	<tr>
		<th>비밀번호 확인</th>
		<td>
			<input type="password" name="password2" id="password2">
			<div id="pwCheck"></div>
		</td>
	</tr>
	<tr>
		<th>이름</th>
		<td><input type="text" name="name" id="name"></td>
	</tr>
	<tr>
		<th>파일첨부</th>
		<td>
			<input type="file" name="upload" id="upload" size="30">
			<input type="button" value="+" onclick="addUpload()">
			<p id = "add"></p>
		</td> <!-- name은 컨트롤러의 변수명과 같게 -->
	</tr>
	<tr colspan="2">
		<td>
			<input type="submit" value="가입">
			<input type="reset" value="다시쓰기">
		</td>
	</tr>
</table>
</form>
</body>
</html>