<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="../resources/js/jquery-3.4.1.js"></script>
<script>
$(document).ready(function(){
	$('#idFind').on('click', idFind);
});

function idFind() {
	var tc_name = $('#name').val();
	var tc_dob = $('#dob').val();
	var tc_email = $('#email').val();
	
	if(tc_name == ""){
		alert('이름을 입력하세요');
		return;
	}
	if(tc_dob == ""){
		alert('생년월일을 입력하세요');
		return;
	}
	if(tc_email == ""){
		alert('이메일을 입력하세요');
		return;
	}
	
	$.ajax({
		url: 'idFind_tc',
		type: 'post',
		data: $('#info').serialize(),
		dataType: 'text',
		success: function(s) {
			
			var str = s + '<br>';
				str += '<input type="hidden" name="tc_id" value="'+s+'">';
				str += '<input type="submit" value="비밀번호 찾기">';
			
			
			$('#FindId').html(str);
			
			
			
			
		},
		error:function(e){
			alert('해당 정보와 관련된 아이디가 존재하지 않습니다.');
		}
	})
	
}
</script>
<title>Insert title here</title>
</head>
<body>
<h1>[TEACHER ID FIND]</h1>
<form action="pwFindForm_tc" method="post" onsubmit="return formCheck()" id="info">
<table>
	<tr>
		<th>이름</th>
		<td><input type="text" id="name" name="tc_name"></td>
	</tr>
	<tr>
		<th>생년월일</th>
		<td><input type="text" id="dob" name="tc_dob" placeholder="YYYY-MM-DD형식"></td>
	</tr>
	<tr>
		<th>이메일</th>
		<td><input type="email" id="email" name="tc_email"></td>
	</tr>
	<tr>
		<th><input type="button" id="idFind" value="아이디 찾기"></th>
	</tr>
</table>

<div id="FindId"></div>
</form>
</body>
</html>