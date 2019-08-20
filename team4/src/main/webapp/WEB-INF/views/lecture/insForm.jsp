<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <title>다중 파일 업로드</title>
        <script src="../resources/js/jquery-3.4.1.js"></script>
        <script>
        $(document).ready(function(){
        	
        });
            // 라인을 늘일 변수
        var uf = '';
            // sw_file_add_form div에 input 태그를 추가하는 함수
            function sw_file_add(size, ext) {
                // 최초 sw_file_add_form에 추가하고 다음부터는 sw_file_add_form1, 2, 3, 4, ... 로 계속 추가가 된다.
                // 물론 그에 맞는 div도 계속 생성한다. 차후에 추가한 div를 제거하는 것도 필요하다.
                eval('sw_file_add_form' + uf).innerHTML += "<input type=file name=file[] size='" + size + "' " + ext + "><div id='sw_file_add_form" + (uf+1) + "'></div>";
                uf++;
            }
        </script>
    </head>
 
    <body>
        <form name="sw_write_form" method="post" enctype="multipart/form-data" action="">
        <input type="file" name="file[]" size="50" class="input_write" /> 
        <!-- 여기에 추가가 된다. -->
        <div id="sw_file_add_form"></div>
        <a href="javascript:sw_file_add(50, 'class=input_write');">파일 추가</a>
        </form>
    </body>
</html>