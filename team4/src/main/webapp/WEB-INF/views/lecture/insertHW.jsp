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
		$('.vid').on('click', function(){
			var num = $(this).attr('vnum');
			var title = $(this).attr('title');	
			showHWList(num, title);
			showlist(num);
			showWList(num);
			showlistW(num);
		});
		
		 
	});
	
	function showWList(num){
		
		var vid_num = num;
		
		
		var txt = '<div id="s_showList"></div>'
		+'<table width="100%">'
		+'<tr><td>'
		+'<textarea rows="5" cols="60" name="question" id="questionW" placeholder="문제"></textarea>'
		+'</td><td>'
		+'<textarea rows="5" cols="60" name="explain" id="exp" placeholder="핵심표현"></textarea>'
		+'</td></tr>'
		+'<tr><td colspan="2">'
		+'<input type="button" value="문제등록" id="insertWQ" wnum="'+vid_num+'"></td></tr></table>';
		
		$('#s_showList').html(txt);
		
		$('#insertWQ').on('click', insertAnswerW);
	}
	
	function insertAnswerW(){
		var w_question = $('#questionW').val();
		var w_pointexp = $('#exp').val();
		var vid_num = $(this).attr('wnum');	
		
		$.ajax({
			url:'insertQW',
			type:'get',
			data:{w_question:w_question, w_pointexp:w_pointexp, vid_num:vid_num},
			success:function(){
				showlistW(vid_num);
				$('#questionW').val('');
				$('#exp').val('');
			},
			error:function(){
				alert('문제등록 실패');	
			}
			
		}); 
		
	}
	
	function showlistW(num){
		var vid_num = num;
		
		$.ajax({
			url:'showListW',
			type:'get',
			data:{vid_num:vid_num},
			dataType:'json',
			success:function(j){
				var txt = '<table width="100%">'
						+'<tr><th colspan="2"><h2>작문 문제</h2></th></tr>'
						+'<tr><th>문제</th><th>문제해석</th></tr>';
				$.each(j, function(k,i){
					i.m_answer
					txt +='<tr>'
						+'<td><textarea rows="5" cols="60" placeholder="문제">'+i.w_question+'</textarea></td>'
						+'<td><textarea rows="5" cols="60" placeholder="문제해석">'+i.w_pointexp+'</textarea></td>'
						+'</tr>'; 
				})
				txt += '</table>';
				$('#s_hwList').html(txt); 
				
			},
			error:function(){
				alert('리스트 불러오기 실패');
			}
		
		
		})
		
	}
	
	function showHWList(num, title){		
		var str = '<h2>'+title+'</h2><br><br><br>'
		+'<div id="hwlist"></div>'
		+'<div id="showList"></div>'
		+'<table width="100%">'
		+'<tr><td>'
		+'<textarea rows="5" cols="60" name="question" id="question" placeholder="문제"></textarea>'
		+'</td><td>'
		+'<textarea rows="5" cols="60" name="explain" id="explain" placeholder="문제해석"></textarea>'
		+'</td><td>'
		+'<select id="ans">'
			+'<option name="answer" class="sel" value="1">1</option>'
			+'<option name="answer" class="sel" value="2">2</option>'
			+'<option name="answer" class="sel" value="3">3</option>'
			+'<option name="answer" class="sel" value="4">4</option>'
		+'</select>'
		+'</td></tr>'
		+'<tr><td colspan="3">'
		+'<input type="button" value="문제등록" id="insertQ" snum="'+num+'"></td></tr></table>';
				
		$('#hwList').html(str);
		
		
		$('#insertQ').on('click', insertAnswer);	
		
	}
	
	
	function insertAnswer(){
		//alert("dlfkjsldkfj");
		var m_question = $('#question').val();
		var m_exp = $('#explain').val();
		var m_answer = $('select>option:selected').val();
		var vid_num = $(this).attr('snum');	
		
		$.ajax({
			url:'insertQ',
			type:'get',
			data:{m_question:m_question, m_answer:m_answer, m_exp:m_exp, vid_num:vid_num},
			success:function(){
				showlist(vid_num);
				$('#question').val('');
				$('#explain').val('');
				$('select>option[value="1"]').attr('selected', 'selected');
			},
			error:function(){
				alert('보여주기 실패');	
			}
			
		}); 
		
	}
	
	function showlist(num){
		var vid_num = num;
		
		$.ajax({
			url:'showList',
			type:'get',
			data:{vid_num:vid_num},
			dataType:'json',
			success:function(j){
				var txt = '<table width="100%">'
						+'<tr><th colspan="3"><h2>객관식 문제</h2></th></tr>'
						+'<tr><th>문제</th><th>문제해석</th><th>답</th></tr>';
				$.each(j, function(k,i){
					i.m_answer
					txt +='<tr>'
						+'<td><textarea rows="5" cols="60" placeholder="문제">'+i.m_question+'</textarea></td>'
						+'<td><textarea rows="5" cols="60" placeholder="문제해석">'+i.m_exp+'</textarea></td>'
						+'<td>'+i.m_answer+'</td>'
						+'</tr>'; 
				})
				txt += '</table>';
				$('#showList').html(txt); 
				
			},
			error:function(){
				alert('리스트 불러오기 실패');
			}
		
		
		})
	}
	
</script>
</head>
<body>
	<table>
		<tr>
			<c:forEach var="v" items="${list}">
			<td>
				<video src="${path}/resources/videofiles/${v.vid_vidsavename}" width="230" height="190" class="vid" vnum="${v.vid_num}" title="${v.vid_title}"></video>
			</td>
			</c:forEach>
		</tr>
	</table>
	<div>
		
		<div id="hwList"></div>
		<div id="showList"></div>
		<div id="s_hwList"></div>
		<div id="s_showList"></div>

		
		
	</div>
	
	
</body>
</html>