<!-- 
선생님 개인 정보 수정
2019-08-21
김지수
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
	var tc_PW = document.getElementById('tc_pw');
	var tc_NAME = document.getElementById('tc_name');
	var tc_PHONE = document.getElementById('tc_phone');
	var tc_EMAIL = document.getElementById('tc_email');
	
	if (tc_PW.value == '' || tc_NAME == '' || tc_PHONE == '' || tc_EMAIL == '') {
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
<title>개인정보 수정</title>
</head>
<body>
<div>
<h1>[ Modify teacher's personal information ]</h1>
<form id="infoUpForm" action="updateTc" enctype="multipart/form-data" method="POST" onsubmit="return infoUpFormCheck();" >
<table>
	<tr>
		<td>아이디</td>
		<td>
			${getTc.tc_id }
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
	<tr>
		<td>사진 등록</td>
		<td>
			${getTc.tc_picname }
			<!-- 등록되 있는 사진 삭제 후 사진 첨부하기 -->
			<input type="button" value="삭제" onclick="location.href='deletefileTcPic?tc_id=${getTc.tc_id}&tc_savedpicid=${getTc.tc_savedpicid}'">
			<input type="file" name="pic" id="tc_picname" size="30">
		</td> <!-- name은 컨트롤러의 변수명과 같게 -->
	</tr>
		
	<tr>
		<td>이름</td>
		<td>
			<input type="text" value="${getTc.tc_name}" name="tc_name" id="tc_name" size="30">
		</td>
	</tr>
	<tr>
		<td>생년월일</td>
		<td>
			${getTc.tc_dob}
		</td>
	</tr>
	<tr>
		<td>연락처</td>
		<td>
			<input type="tel" value="${getTc.tc_phone}" name="tc_phone" id="tc_phone" size="40" pattern="[0-9]{3}-[0-9]{4}-[0-9]{4}" required placeholder="000-0000-0000 형식으로 입력해주세요.">
		</td>
	</tr>
	<tr>
		<td>이메일</td>
		<td>
			<input type="email" value="${getTc.tc_email}" name="tc_email" id="tc_email" size="30">
		</td>
	</tr>
	<tr>
		<td class="but" colspan="2">
			<input type="submit" value="수정">
			<input type="reset" value="다시쓰기">
		</td>
	</tr>
</table>
</form>
</div>
</body>
</html>