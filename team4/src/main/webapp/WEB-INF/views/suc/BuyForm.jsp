<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>결제창</title>
<script src="../resources/js/jquery-3.4.1.js"></script>
<script>
$(document).ready(function(){
	   
    $('#coupon').on('click', coupon)
   
 })
 
 function coupon() {
	var url = "../suc/couponForm";
	var name = "couponForm";
	var option = "width = 500, height = 500, top = 100, left = 200, location = no"
	window.open(url, name, option);
}

if (${close != null}) {
	alert('결제 성공');
	self.close();
}
</script>
</head>
<body>
<h1>[결제창]</h1>

<form action="buy" method="post">
<input type="hidden" name="ins_num" value="${vo.ins_num }">
<table>
	<tr>
		<th>강의명</th>
		<td>${vo.ins_title}</td>
	</tr>
	<tr>
		<th>쿠폰</th>
		<td><input type="button" id="coupon" value="쿠폰사용"></td>
	</tr>
	<tr>
		<th>결제금액</th>	
		<td><div id="price">${vo.ins_price}</div></td>	
	</tr>
	<tr>
		<td><input type="submit" value="구매"></td>
	</tr>
</table>
</form>
</body>
</html>