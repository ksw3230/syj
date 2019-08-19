<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Tyxxpe" content="text/html; charset=UTF-8">
<title>강의등록</title>
<script src="../resources/js/jquery-3.4.1.js"></script>
<script>
$(function(){
	$("#btnSave").click(function(){
		var str="";
		$("#uploadedList .file").each(function(i){
			console.log(i);
			str += "<input type='hidden' name='files["+i+"]' value='" + $(this).val()+"'>";
		});
		$("#form1").append(str);
		document.form1.submit();
	});
	$(".fileDrop").on("dragenter dragover",function(e){
		e.preventDefault();
	});
	$(".fileDrop").on("drop",function(e){
		e.preventDefault();
		var files=e.originalEvent.dataTransfer.files;
		var file=files[0];
		var formData=new FormData();
		formData.append("file",file);
		$.ajax({
			url: "${path}/fboard/uploadFile",
			data: formData,
			dataType: "text",
			processData: false,
			contentType: false,
			type: "post",
			success: function(data){
				var fileInfo=getFileInfo(data);
				var html="<a href='"+fileInfo.getLink+"'>"+	fileInfo.fileName+"</a><br>";
				html += "<input type='hidden' class='file' value='" + fileInfo.fullName + "'>";
				$("#uploadedList").append(html);
			}
		});
	});
});
</script>

<style>
.fileDrop {
                border: 2px dashed #92AAB0;
                width: 600px;
                height: 150px;
                color: #92AAB0;
                text-align: center;
                vertical-align: middle;
                padding: 10px 0px 10px 10px;
                font-size:200%;
                display: table-cell;
            }
</style>

</head>
<body>
<form id="form1" name="form1" method="post" action="${path}/fboard/insertOK">

<table align="center" width="600px">
<tr>
	<th><h2>글쓰기</h2></th>
</tr>
<tr>	
	<td>제목<input name="title" id="title" size="80" placeholder="제목을 입력하세요"></td>
</tr>
<tr>
	<td>내용 
		<textarea id="content" name="content"></textarea>
		<script>
		$(function() {
			//id가 memo인 태그를 summernote로 변경
			$("#content").summernote({
				height : 150,
				width : 600
			});
		});
		</script>
	</td>	
</tr>
<tr>
	<td>
		첨부파일 등록
		<div class="fileDrop">Drag & Drop Files Here</div>
		<div id="uploadedList"></div>
	</td>
</tr>
<tr>
	<td align="right">
		<button type="button" id="btnSave">확인</button>
		<input type="button" value="돌아가기" onclick="history.go(-1)"/>
	</td>
</tr>
	
</tr>
</table>
</form>


</body>
</html>