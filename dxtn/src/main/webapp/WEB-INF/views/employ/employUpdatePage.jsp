<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<style>
	table{
		 border-collapse : collapse;
	}
</style>
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
	<h2 style="text-align:center;">게시글쓰기</h2>
	<form action="employUpdate" name="regForm" id="regForm" method="post">
		<input type="hidden" name="curentPg" value="${curentPg}">
		<input type="hidden" name="eno" value="${article.eno}">
		<table border="1" style="margin:0 auto; width:600px;">
		<tr>
			<th width="200">제목</th>
			<td width="400">
					<input type="text" name="esub" title="제목" class="chk" size="40" value="${article.esub }"/>			
			</td>
		</tr>
		<tr>
			<th width="200">작성자</th>
			<td width="400"><input type="text" name="ewriter" title="작성자" class="chk" size="40" value="admin" readonly/></td>
		</tr>
		<tr>
			<th width="200">내용</th>
			<td width="400"> <textarea id="summernote" name="econ" class="chk">${article.econ }</textarea></td>
		</tr>
		
		<tr style="text-align:right;">
			<td colspan="2">
				<input type="button" value="글저장" id="submit1" style="color:white;border:none; border-radius: 5px;padding : 10px 15px; background-color: #5CC7F7">&nbsp;&nbsp;&nbsp;
				<input type="button" onclick="location.href='employ?curentPg=${curentPg}'" value="글목록" style="color:white;border:none; border-radius: 5px;padding : 10px 15px; background-color: #5CC7F7">
			</td>
		</tr>
		</table>
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