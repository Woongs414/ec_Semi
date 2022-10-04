<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
request.setCharacterEncoding("utf-8");
%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<c:set var="board" value="${boardMap.board}" />
<c:set var="image_fileList" value="${boardMap.image_fileList }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.3/font/bootstrap-icons.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<title>글보기</title>
<style>

#left-imageslide{
	margin-top: 4.5%;
	margin-bottom: 10%;
	margin-right: 40px;
	margin-left: 50px;
	width:45%;
	float: left;
}

#write{
	display: inline-block;
	margin-top: 5%;
	margin-bottom: 10%;
	width: 40%;
	height: 60%; 
}
#comments-div{
	display:inline-block;
	padding: 0;
	width: 100%;

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
}

.writebtn{
	display:inline-block;
	float: right;
	margin-bottom: 30px;
}
#reply-btn{
	float: right;

}
.comment-count{
	border-bottom: 1px solid gray;
}
#non-topborder{
	border-bottom: 1px;
}
#not-comment{
	margin: 0;
}
#table-comment{
	border: none;
}

#comment-td{
	padding-left: 15px;
}
/* .carousel-control-prev-icon {
 background-image: url("data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' fill='%23000' viewBox='0 0 8 8'%3E%3Cpath d='M5.25 0l-4 4 4 4 1.5-1.5-2.5-2.5 2.5-2.5-1.5-1.5z'/%3E%3C/svg%3E") !important;
}

.carousel-control-next-icon {
  background-image: url("data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' fill='%23000' viewBox='0 0 8 8'%3E%3Cpath d='M2.75 0l-1.5 1.5 2.5 2.5-2.5 2.5 1.5 1.5 4-4-4-4z'/%3E%3C/svg%3E") !important;
} */

</style>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
<script type="text/javascript">

	function backToList(obj){
		obj.action="${contextPath}/user/u_board/eatpl";
		obj.submit();
	}	
	function fn_modify_article(obj){
		obj.action="${contextPath}/user/modBoard.do";
		obj.submit();
	}
	
	function fn_remove_article(url,list_num){
		var form = document.createElement("form");
		form.setAttribute("method", "post");
		form.setAttribute("action", url);
		var list_numInput = document.createElement("input");
		articleNoInput.setAttribute("type", "hidden");
		articleNoInput.setAttribute("name", "list_num");
		articleNoInput.setAttribute("value", list_Num);
		
		form.appendChild(list_numInput);
		document.body.appendChild(form);
		form.submit();
	}
	function readURL(input){
		if(input.files && input.files[0]){
			var reader = new FileReader();
			reader.onload = function(e){
				$('#preview').attr('src', e.target.result);
			}
			reader.readAsDataURL(input.files[0]);
		}
	}
</script>
</head>
<body>
<h1 align="center">게시글</h1>
<div id="left-imageslide">
	<c:if test="${not empty image_fileList && image_fileList !='null'}">
	<c:choose>
	<c:when test="${fn:length(image_fileList) == 1}">
	<div id="carouselExampleDark" class="carousel carousel-dark slide" data-bs-ride="carousel">
	<div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="${status.index}" class="active" aria-current="true" aria-label="Slide 1"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="${contextPath}/u_board/download.do?list_num=${board.list_num}&image_fileName=${board.image_fileName}" class="d-block w-100" alt="..." width="300px" height="300px" >
    </div>
  </div>
</div>
	</c:when>
	<c:when test="${fn:length(image_fileList) > 1}">
	<div id="carouselExampleDark" class="carousel carousel-dark slide" data-bs-ride="carousel">
	<div class="carousel-indicators">
	<button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
	<c:forEach var="item" items="${imageFileList}" varStatus="status">
	<button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="${status.count}" aria-label="Slide ${status.count+1}"></button>
	</c:forEach>
	</div>
	<div class="carousel-inner">
    <div class="carousel-item active">
    <img src="${contextPath}/u_board/download.do?list_num=${board.list_num}&image_fileName=${board.image_fileName}" class="d-block w-100" alt="..." width="300px" height="300px" >
    </div>
    <c:forEach var="item" items="${imageFileList}" varStatus="status">
    <div class="carousel-item">
      <img src="${contextPath}/u_board/download.do?list_num=${board.list_num}&image_fileName=${board.image_fileName}" class="d-block w-100" alt="..." width="300px" height="300px" >
    </div>
    </c:forEach>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
	  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="next">
	    <span class="carousel-control-next-icon" aria-hidden="true"></span>
	    <span class="visually-hidden">Next</span>
	  </button>
	</c:when>
	</c:choose>
</c:if>
</div>
	<div id="write">
	<form name="frmBoard" method="post" action="${contextpath}"
		enctype="multipart/form-data">
		<table align="center" class="table">
			<tr style="border-top: none;">
				<td width="150" align="center" style="border-top: none;" >
				작성자 아이디
				</td>
				<td style="border-top: none;>
				${board.user_id}
				<input type="hidden" value="${board.user_id}" name="user_id" />
				</td>
			</tr>
			<tr>
				<td width="150" align="center">
				등록일자
				</td>
				<td>
					<fmt:formatDate value="${board.mod_date}"/>
					<input type="hidden" value="<fmt:formatDate value="${board.mod_date}"/>" disabled />
				</td>
			</tr>
			<tr>
				<td width="150" align="center"">
				제목
				</td>
				<td>
				${board.u_title}
				</td>
			</tr>
			
			<tr>
				<td width="150" height="300" align="center" style="vertical-align: middle;">
				내용
				</td>
				<td style="vertical-align: middle;">
				${board.u_content}
				</td>
			</tr>	
		</table>
		<c:if test="${member.user_id==board.user_id}">
				<input class="writebtn" type="button" value="수정하기" onClick="fn_reply_form('${contextPath}/user/u_board/modForm', ${board.list_num})" />
				<input class="writebtn" type="button" value="삭제하기" onClick="fn_remove_article('${contextPath}/user/removeBoard', ${board.list_num})" />
			</c:if>
				<input class="writebtn" type="button" value="리스트로 돌아가기" onClick="backToList(this.form)" />
		<div class="col-lg-12" id="comments-div">
    <div class="card" id="comments-card">
        <div class="card-header with-border">
            <h3 class="card-title">Comments</h3>
        </div>
        <div class="card-body">
            <div class="row">
            <div class="form-group col-sm-2">
            ${member.user_id}
            <form action="${contextPath}/user/u_board/addcomment" method="post">
            <input type="hidden" name="comment_id" value="${member.user_id}">
            <input type="hidden" name="list_num" value="${member.board.list_num}">
			</div>
            <div class="form-group col-sm-8">
            <input class="form-control input-sm" id="newReplyText" name="comments" type="text" placeholder="댓글 입력...">
            </div>
			<div class="form-group col-sm-2">
			<button type="submit" class="btn btn-primary btn-sm btn-block replyAddBtn">
			<i class="fa fa-save"></i> 댓글쓰기
			</button>
			</div>
			</div>	
	      </div>
	      </form>
	      <div class="card-footer">
            <table align="center" width="80%" id="table-comment" >
			<c:choose>
				<c:when test="${empty comments}">
					<tr>
						<td colspan="4">
							<p align="center" id="not-comment">
								<b><span style="font-size: 12pt;">등록된 댓글이 없습니다.</span></b>
							</p>
						</td>
					</tr>
				</c:when>
				<c:when test="${!empty comments}">
					<c:forEach var="comment" items="${comments}" varStatus="commentNum">
						<tr align="center">
						<td align="left" id="comment-td">
						<c:choose>
							<c:when test="${comment.level>1}">
							<c:forEach begin="1" end="${comment.level}" step="1">
								<span style="padding-left: 10px"></span>
							</c:forEach>
								<span style="font-size: 20px; font-style: blue;">${comment.comment_id}</span>
								&nbsp;&nbsp;${comment.comments}
							</c:when>
							<c:otherwise>
								<span style="font-size: 20px; font-style: blue;">${comment.comment_id}</span>
								&nbsp;&nbsp;${comment.comments}
							</c:otherwise>
								</c:choose>
								</td>
							<td width="20%"><fmt:formatDate value="${comment.mod_date}"/></td>
						</tr>
					</c:forEach>
				</c:when>
			</c:choose>
		</table>
        </div>
    </div>
  </div>						
	</form>
	</div>
</body>
</html>