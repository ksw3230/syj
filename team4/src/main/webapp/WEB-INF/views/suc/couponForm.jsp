<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script src="../resources/js/jquery-3.4.1.js"></script>
<script>
$(document).ready(function(){
	   
    $('#use').on('click', use)
   
 })
 
function use(){
	var c_discount = $('input:radio:checked').val();
	
	if(c_discount == null){
		alert('쿠폰을 선택해주세요');
	}
	
	$.ajax({
		url:'coupon',
		type:'post',
		data:{c_discount:c_discount},
		dataType:'text',
		success:function(){
			
		},
		error:function(e){
			alert('적용실패');
		}
	})
	
}
</script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<table>
	<c:forEach var="list" items="${list}">
		<input type="hidden" name="c_num" id="c_num" value="${list.c_num }">	
	  	<tr id="list">
	  		<td>
	  			${list.c_discount}
	  		</td>
	  		<td>
	  			<input type="radio" name="choice" value="${list.c_discount}">
	  		</td>
	  	</tr>
	</c:forEach>
		<tr>
	  		<td>
	  			<input type="button" id="use" value="사용하기">
	  		</td>
	  	</tr>	 			
</table>
	
</body>
</html>