<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<style>
	h2{
		margin-top: 60px;
	}
	
	.board_view{
		width: 70%;
		margin: 0 auto;
		margin-top: 30px;
	}
	
	.content{
		margin-left: 20px;
	}
	
	li{
		list-style: none;
		display: list-item;
	}
	
	.board_view_header {
	    padding: 20px 0 10px;
	    border-top: 1px #8d8d8d solid;
	    border-bottom: 1px #e7e7e7 solid;
	}
	
	div{
		display: block;
	}
	
	.board_view_header .post_info > li {
	    display: inline-block;
	    vertical-align: top;
	    margin: 10px 12px 0 0;
	    font-size: 13px;
	    color: #999;
	}
	
	.board_view_header .post_btns > li {
	    display: inline-block;
	    vertical-align: top;
	    margin: 10px 2px 0 0;
	}
	
	
	.board_view_header2{
		display: flex;
		justify-content: space-between;
	}
	
	.liBtn{
		 background-color: white; 
		 border: 0px;
	}
	
	.board_view_sub{
		margin-left: 40px;
	}
</style>
<meta charset="UTF-8">
<title>수정</title>
</head>
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script src="resources/js/employScript.js"></script>
<body>
	<h2 style="text-align:center;">채용공고</h2>
	<form action="" name="contentForm" id="regForm" method="post">
		<input type="hidden" name="curentPg" value="${curentPg}">
		<input type="hidden" name="eno" value="${article.eno}"/>
		<div class="board_view">
			<div class="board_view_header">
				<div class="board_view_header1">
					<div class="board_view_sub">
						<span>${article.esub }</span>
					</div>
					<div class="share">
						<div style="display: none"></div>
							<span class="i_share sharpOpenBtn"></span>
						<div class="layer_wrap" style="display: none"></div>
					</div>
				</div>
				<div class="board_view_header2">
					<ul class="post_info">
						<li>${article.ewriter }</li>
						<li>${article.eregdate }</li>
						<li>${article.readcount }</li>
					</ul>
					<ul class="post_btns" >
						<li><input type="button" class="liBtn pwdComp" id="up" value="수정"/></li>
						<li>|</li>
						<li><input type="button" class="liBtn pwdComp" id="del" value="삭제"></li>								
					</ul>
				</div>
			</div>
			<div class="content">
				<p>${article.econ }</p>
			</div>
			<div style="text-align: center; margin-bottom: 30px;'">	
				<input type="button" onclick="location.href='employ?curentPg=${curentPg}'" class="btn btn-secondary" value="목록"/>
			</div>
		</div>
	</form>
</body>
</html>