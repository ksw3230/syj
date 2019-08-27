<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="../resources/js/jquery-3.4.1.js"></script>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<script>
	$(document).ready(function(){
		$('.vid').on('click', function picone(){
			var n = $(this).attr('vnum');
			showHWList(n);
		});
	})
	
	function showHWList(num){
		
		alert(num);
		
	}
	
	
	
</script>
</head>
<body>
	<table>
		<tr>
			<c:forEach var="v" items="${list}">
			<td>
				<video src="${path}/resources/videofiles/${v.vid_vidsavename}" width="230" height="190" class="vid" vnum="${v.vid_num}"></video>	
			</td>
			</c:forEach>
		</tr>
	</table>
	<div>
		<div>
			
		</div>
	</div>
	
	
</body>
</html>