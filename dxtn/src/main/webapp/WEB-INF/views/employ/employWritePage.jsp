<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>게시글 쓰기</title>
   <!--  jQuery, bootstrap -->
    <link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
    <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
    <script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>

    <!-- summernote css/js-->
    <link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css" rel="stylesheet">
    <script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>

</head>
<body><!-- 
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script> -->
<script src="resources/js/employScript.js"></script>
	<h2 style="text-align:center; margin-top: 20px; padding-bottom: 10px;">채용공고</h2>
	<form action="employWrite" name="regForm" id="regForm" method="post">
		<input type="hidden" name="curentPg" value="${curentPg}">
		<table border="1" style="margin:0 auto; width:600px;" class="board-table">
		<tr>
			<th width="200" style="text-align: center">제목</th>
			<td width="400">
				<input type="text" name="esub" title="제목" class="chk form-control" size="40"/>
			</td>
		</tr>
		<tr>
			<th width="200" style="text-align: center">작성자</th>
			<td width="400"><input type="text" name="ewriter" title="작성자" class="chk form-control mt-4 mb-2" size="40" value="admin" readonly/></td>
		</tr>
		<tr>
			<th width="200" style="text-align: center">내용</th>
			<td width="400"> <textarea id="summernote" name="econ" class="chk"></textarea></td>
		</tr>
		</table>
		<div style="text-align: center; margin-top:7px;">
			<input type="button" value="작성" id="submit1" class="btn btn-primary">&nbsp;&nbsp;
			<input type="button" onclick="location.href='employ?curentPg=${curentPg}'" value="목록" class="btn btn-second">
		</div>
	</form>
<script type="text/javascript">
$(document).ready(function () {
    $('#summernote').summernote({
        placeholder: '내용을 작성하세요',
        height: 400,
        maxHeight: 400,
        width: 400
    });
});
</script>
</body>
</html>