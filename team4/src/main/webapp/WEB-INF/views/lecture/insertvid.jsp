<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="../resources/js/jquery-3.4.1.js"></script>
<script>
	if(${msg != null}){
		alert('${msg}');
		opener.location.reload();
		self.close();
	}
	
    // 라인을 늘일 변수
	var uf = '';
    // sw_file_add_form div에 input 태그를 추가하는 함수
    function sw_file_add(size) {
        // 최초 sw_file_add_form에 추가하고 다음부터는 sw_file_add_form1, 2, 3, 4, ... 로 계속 추가가 된다.
        // 물론 그에 맞는 div도 계속 생성한다. 차후에 추가한 div를 제거하는 것도 필요하다.
        eval('sw_file_add_form' + uf).innerHTML +="동영상 : <input type='file' name='vid' size='" + size + "'>" 
												+ "<div id='sw_file_add_form" + (uf+1) + "'></div>";
        										
        								
        uf++;
        									
        $('input:button.btn').on('click', submitfile);									
    }
    
    function submitfile(){
    	var num = $(this).attr('fnum');
    	alert(num);
    	
    	var form = document.getElementById('form'+num);
    	
    	form.submit();
    	
    }

</script>
</head>
<body>
	
<form method="post" enctype="multipart/form-data" action="fileUpload">
		동영상 : <input type="file" name="vid" size="60">
		<!-- 여기에 추가가 된다. -->
        <div id="sw_file_add_form"></div>
        <a href="javascript:sw_file_add(60);">파일추가</a>
	<input type="hidden" name="ins_num" value="${vo.ins_num}">
	<input type="submit" value="파일저장">
</form>
        
</body>
</html>