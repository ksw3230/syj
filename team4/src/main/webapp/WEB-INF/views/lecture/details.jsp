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

if(${vo.ins_thumbnailsave == null || list == null}){
	alert("등록된 비디오가 없습니다.");
	self.close();
}

</script>

</head>
<body>

<table border="1" width="100%">
	<tr>
		<th colspan="2">
			<p>${vo.ins_title}</p>			
		</th>
	</tr>
	<tr>
		<td width="230">
			<video src="${path}/resources/videofiles/${vo.ins_thumbnailsave}" width="230" height="190"></video>	
		</td>
		<td>
			${vo.ins_des}
		</td>
	</tr>
	<tr>
		<th colspan="2">
			<textarea rows="30" cols="100">${vo.ins_vidlist }</textarea>
		</th>
	</tr>
</table>
<table width="100%">
	<tr>
		<th colspan="2">
			동영상
		</th>
	</tr>
	
<c:forEach var="v" items="${list}">
	<tr>
		<td>
			<video src="${path}/resources/videofiles/${v.vid_vidsavename}" width="230" height="190" controls></video>	
		</td>
		<td>
			${v.vid_vidname}
		</td>		
	</tr>
</c:forEach>
</table>


</body>
</html>