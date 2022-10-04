<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<%
request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글쓰기 창</title>
<style>
#write{
	margin-top: 5%;
	margin-left: 33%;
	margin-bottom: 10%;
	border: 1px solid ;
	border-color: white;
	width: 750px; 
}
#tr_btn_modify {
	display: none;
}
#tr_file_upload{
	display: none;
}
#preview{
	width: 200px;
	height: 200px;
	display: none;
}
#backToListbtn{
	float: right;
}
#writebtn{
	float: right;
	margin-right: 30px;
}

#category-select{
	width: 170px;
}
</style>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
	function readURL(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();
			reader.onload = function(e) {
				$('#preview').attr('src', e.target.result);
			}
			reader.readAsDataURL(input.files[0]);
			document.getElementById("preview").style.display="block";
		}
	}
	function backToList(obj){
		obj.action="${contextPath}/user/u_board";
		obj.submit();
	}
</script>
</head>
<body>
	<div id="write">
	<h1 style="text-align: center">플레이 리스트 글 작성</h1>
	<form name="boardForm" method="post"
		action="${contextPath}/board/addNewboard"
		enctype="multipart/form-data">
		<table align="center" class="table table-condensed">
			<tr>
				<td align="right">작성자:</td>
				<td colspan="2" align="left">${member.user_id}</td>
			</tr>
			<tr>
				<td align="right">카테고리:</td>
				<td>
				<select id="category-select" class="form-select" aria-label="category_code" name="category_code">
					<option selected disabled hidden>플레이 리스트</option>
					<option value="1">먹.플.리</option>
					<option value="2">볼.플.리</option>
				</select>
				</td>
			</tr>
			<tr>
				<td align="right">글제목:</td>
				<td colspan="2"><input type="text" size="67" maxlength="500"
					name="u_title" /></td>
			</tr>
			<tr>
				<td align="right" valign="top"><br>글내용:</td>
				<td colspan="2"><textarea name="u_content" rows="10" cols="65"
						maxlength="4000"></textarea></td>
			</tr>
			<tr>
				<td align="right">이미지파일:</td>
				<td>
				<input type="file" name="image_fileName" onchange="readURL(this);" />
				</td>
			</tr>
			<tr>
				<td align="right">이미지 미리보기:</td>
				<td><img id="preview" src="#" /></td>				
			</tr>
			<tr>
			</tr>
		</table>
		<button type="button" class="btn btn-light" id="backToListbtn" onClick="backToList(this.form)">목록보기</button>
		<button type="submit" class="btn btn-light" id="writebtn">글쓰기</button>
	</form>
	</div>
</body>
</html>