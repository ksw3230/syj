<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="../resources/js/jquery-3.4.1.js"></script>
<style>
table{
	margin: auto;
	text-align: center;
}

</style>
<script>
	function formck(){
		var title = document.getElementById('ins_title');
		var des = document.getElementById('ins_des');
		var cate = document.getElementById('category');
		var price = document.getElementById('ins_price');
		
		if(title.value == ''){
			alert('제목을 입력해 주세요');
			return false;
		}
		if(des.value == ''){
			alert('강의 설명을 입력해 주세요');
			return false;
		}
		if(cate.value == '선택'){
			alert('카테고리를 선택해 주세요');
			return false;
		}
		if(price.value == ''){
			alert('가격을 입력해 주세요');
			return false;
		}
		if(isNaN(price.value)){
			alert('숫자를 입력해 주세요')
			return false;
		}
		return true;
		
	}
	if(${ok != null}){
		alert('강의가 등록 되었습니다.');
		opener.location.reload();
		self.close();
		
	}
	if(${msg != null}){
		alert('${msg}');
	}
</script>
</head>
<body>
<form action="insertins" method="post" onsubmit="return formck()">
	<table>
		<tr>
			<th>
				강의제목<br>
				<input type="text" id="ins_title" name="ins_title" size="30">
			</th>
		</tr>
		<tr>
			<th>
				강의설명<br>
				<textarea rows="15" cols="30" id="ins_des" style="resize: none;" name="ins_des">
				</textarea>
			</th>
		</tr>
		<tr>
			<th>
				카테고리<br>
				<select style="width:240px;" id="category"  name="ins_cate">
					<option value="선택" >선택</option>
					<option value="초급" >초급</option>
					<option value="중급" >중급</option>
					<option value="고급" >고급</option>
				</select>
			</th>
		</tr>
		<tr>
			<th>
				가격<br>
				<input type="text" id="ins_price" name="ins_price" size="30">
			</th>
		</tr>
		<tr>
			<th>
				<input type="submit" value="등록하기">
			</th>
		</tr>
	</table>
</form>
</body>
</html>