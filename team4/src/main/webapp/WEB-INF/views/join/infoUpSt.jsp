<!-- 
선생님 개인 정보 수정
2019-08-22
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
	$('#st_pw').keyup(function(){
		var checkPw = $('#st_pw').val();
		if (checkPw.length < 3 || checkPw.length > 10){
			var i = '<p>3글자 이상 10글자 이상 입력해주세요.</p>'
			$('#pwLength').html(i);
			return;
		} else {
			$('#pwLength').html('');
		}
	});
	
	$('#st_pw2').keyup(function(){
		var pw = $('#st_pw').val();
		var pw2 = $('#st_pw2').val();
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

function updateformCheck(){
	var st_PW = document.getElementById('st_pw');
	var st_NAME = document.getElementById('st_name');
	var st_PHONE = document.getElementById('st_phone');
	var st_EMAIL = document.getElementById('st_email');
	
	if (st_PW.value == '' || st_NAME == '' || st_PHONE == '' || st_EMAIL == '') {
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
<h1>[ Modification of student personal information ]</h1>
<form id="joinform" action="updateSt" enctype="multipart/form-data" method="POST" onsubmit="return updateformCheck();" >	<!-- enctype="multipart/form-data"  method옆에 적어야 함, 파일만 추가하면 오류 떠서 주석-->
<table>
	<tr>
		<td>아이디</td>
		<td>
			${getSt.st_id }
		</td>
	</tr>
	<tr>
		<td>비밀번호</td>
		<td>
			<input type="password" name="st_pw" id="st_pw" size="30">
			<div id="pwLength"></div>
		</td>
	</tr>
	<tr>
		<td>비밀번호 확인</td>
		<td>
			<input type="password" id="st_pw2" size="30">
			<div id="pwCheck"></div>
		</td>
	</tr>
		
	
	<tr>
		<td>사진 등록</td>
		<td>
			${getSt.st_picname }
			<!-- 등록되 있는 사진 삭제 후 사진 첨부하기 -->
			<input type="button" value="삭제" onclick="location.href='deletefileStPic?st_id=${getSt.st_id}&st_savedpicname=${getSt.st_savedpicname}'">
			<input type="file" name="pic" id="st_picname"size="30">
		</td> <!-- name은 컨트롤러의 변수명과 같게 -->
	</tr>
		
	<tr>
		<td>이름</td>
		<td>
			<input type="text" value="${getSt.st_name}" name="st_name" id="st_name" size="30">
		</td>
	</tr>
	<tr>
		<td>생년월일</td>
		<td>
			${getSt.st_dob }
		</td>
	</tr>
	<tr>
		<td>연락처</td>
		<td>
			<input type="tel" value="${getSt.st_phone }" name="st_phone" id="st_phone" size="40" pattern="[0-9]{3}-[0-9]{4}-[0-9]{4}" required placeholder="000-0000-0000 형식으로 입력해주세요.">
		</td>
	</tr>
	<tr>
		<td>이메일</td>
		<td>
			<input type="email" value="${getSt.st_email }" name="st_email" id="st_email" size="30" >
		</td>
	</tr>
	<tr>
		<td>학습 수준</td>
		<td>
			<c:if test="${getSt.st_level == '1'}">
				<p>현재 학습 수준▷ 초급</p>
			</c:if>
			<c:if test="${getSt.st_level == '2'}">
				<p>현재 학습 수준▷ 중급</p>
			</c:if>
			<c:if test="${getSt.st_level == '3'}">
				<p>현재 학습 수준▷ 고급</p>
			</c:if>
			<fieldset>
				<input type="radio" name="st_level" value="1"> 초급
				<input type="radio" name="st_level" value="2"> 중급
				<input type="radio" name="st_level" value="3"> 고급
			</fieldset>
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