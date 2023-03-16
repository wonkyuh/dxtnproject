<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>모집공고</title>
</head>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>
<script src="resources/js/employScript.js"></script>
<body>
	<h2 style="text-align:center; padding-top:20px; margin-bottom:10px;">채용공고</h2>
	<p>
	<table style="margin:0 auto; width:900px;">
		<tr>
			<td style="text-align:right; padding-right: 20px;">
				<button id="write" class="pwdComp btn btn-info" style="--bs-btn-padding-y: .25rem; --bs-btn-padding-x: .5rem; --bs-btn-font-size: .75rem;">채용공고작성</button>
			</td>
		</tr>
	</table>
	<p>
	<c:choose>
	<c:when test="${articles.size()==0 }">
		<table border="1" style="margin:0 auto; width:700px;" class="table">
			<tr>
				<th style="text-align:center">채용공고가 없습니다.</th>
			</tr>
		</table>
	</c:when>
	<c:when test="${articles.size()!=0 }">
		<table class="table" style="margin:0 auto; width:900px;">
			<thead>
				<tr>
					<th scope="col" style="text-align: center">번호</th>
					<th scope="col" style="text-align: center">제목</th>
					<th scope="col" style="text-align: center">작성자</th>
					<th scope="col" style="text-align: center">작성일</th>
					<th scope="col" style="text-align: center">조회</th>
				</tr>
			</thead>
			
			<tbody>
				<c:forEach items="${articles}" var="article">
					<tr>
						<td style="text-align:center;">${article.rnum}</td>
						<td style="text-align:center;" >
							<a href="javascript:getContent(${article.eno });" style="text-decoration: none; color: black; font-weight : 600">${article.esub}</a>
						</td>
						<td style="text-align:center;">${article.ewriter}</td>
						<td style="text-align:center;">${article.eregdate}</td>
						<td style="text-align:center;">${article.readcount}</td>
					</tr>
				</c:forEach>
			</tbody>
			
			<tfoot>
				<tr>
					<td colspan="5" style="text-align:center;">
						<c:forEach var="p" begin="1" end="${pageCnt}">
							<a href="employ?curentPg=${p}">${p}</a>
						</c:forEach>
					</td>
				</tr>
			</tfoot>
		</table>
		</c:when>
		</c:choose>
		<form action="" name="tForm" method="post">
			<input type="hidden" id="eno" name="eno" value="">
			<input type="hidden" name="curentPg" value="${curentPg}">
		</form>
</body>
</html>