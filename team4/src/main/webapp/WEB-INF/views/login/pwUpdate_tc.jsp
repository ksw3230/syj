<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="../resources/js/jquery-3.4.1.js"></script>
<script>
$(document).ready(function(){
	$('#pwck').on('keyup', pwcheck);
});

function pwcheck() {

	var tc_pw = $('#pw').val();
	var tc_pwck = $('#pwck').val();
	
	if (tc_pw == tc_pwck) {
		$('#pwch').html('비밀번호 일치');
	}else {
		$('#pwch').html('비밀번호 불일치');
	} 
}
</script>
</head>
<body>
<h1>[PASSWORD UPDATE]</h1>
<form action="pwUpdate_tc" method="post">
<input type="hidden" name="tc_id" value="${teacher.tc_id }">
<table>
	<tr>
		<th>비밀번호</th>
		<td><input type="password" id="pw" name="tc_pw"></td>
	</tr>
	<tr>
		<th>비밀번호확인</th>
		<td><input type="password" id="pwck"></td>
		<td><p id="pwch"></p></td>
	</tr>
	<tr>
		<th><input type="submit" value="수정"></th>
	</tr>
</table>
</form>
</body>
</html>