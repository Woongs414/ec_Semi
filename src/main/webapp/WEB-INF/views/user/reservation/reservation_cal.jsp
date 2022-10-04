<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />

<%
request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<!-- Custom Theme files -->
<link href="${contextPath}/css/font-awesome.css" rel="stylesheet">
<link href="${contextPath}/css/wickedpicker.css" rel="stylesheet" type='text/css'
	media="all" />
<link href="${contextPath}/css/style.css" rel='stylesheet' type='text/css' />
<!--fonts-->
<link href="//fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet">
<!--//copyright-->
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript" src="${contextPath}/js/wickedpicker1.js"></script>
<script type="text/javascript">
$(function() {
	$('.timepicker').wickedpicker({
		twentyFour : false,
		now: '12:00',
		minutesInterval: 10,
	});
});
</script>
<!-- Calendar -->
<link rel="stylesheet" href="css/jquery-ui.css" />
<script src="js/jquery-ui.js"></script>
<script>
	$(function() {
		$("#datepicker").datepicker({
			dateFormat: 'yy-mm-dd'
		});
	});
</script>
<style type="text/css">
#reservation-form{
	position: absolute;
	top: 100px;
	right: 100px;
	width: 900px;
	float: right;
	height: 700px;
}
#reservation-img{
	width: 550px;
	height: 700px;
	background-image: url("${contextPath}/image/hero-1.jpg");
	background-size: cover;
	float: left;
}

.book-reservation{
	width: 280px;
	height: 630px;
	float: right;
}
.formline{
	width:100%;
}
</style>
<title>예약</title>
</head>
<body>
	<div id = reservation-form>
	<div id="reservation-img">
</div>
	<div class="book-reservation">
		<form action="#" method="post">
			<div class="form form-date-w3-agileits formline">
				<label><i class="fa fa-user" aria-hidden="true"></i> 성함 :</label>
				<input type="text" name="name" placeholder="성함을 넣어주세요"/>
			</div>
			<div class="form-date-w3-agileits formline">
				<label><i class="fa fa-envelope" aria-hidden="true"></i>
					연락처 :</label> <input type="text" name="user_tel" placeholder="'-'를 제외하고 넣어주세요"/>
			</div>
			<div class="form-date-w3-agileits formline">
				<label><i class="fa fa-calendar" aria-hidden="true"></i>예약일자 :</label> <input id="datepicker" name="Text" type="text"
					value="예약날짜 선택" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '예약날짜 선택';}">
			</div>
			<div class="form-time-w3layouts formline">
				<label><i class="fa fa-clock-o" aria-hidden="true"></i>예약시간 :</label> <input type="text" name="Time" class="timepicker form-control"
					value="예약시간 선택">
			</div>
			<div class="form-left-agileits-w3layouts formline">
				<label><i class="fa fa-users" aria-hidden="true"></i>인원수</label>
				<input type="text" name="persons" placeholder="인원수를 넣어주세요"/>
				
			</div>
			<div class="form-left-agileits-w3layouts formline">
				<label><i class="fa fa-users" aria-hidden="true"></i>요청 사항</label>
				<textarea rows="3" placeholder="요청사항을 넣어주세요" ></textarea>
				
			</div>
			<div class="clear"></div>
			<div class="make">
				<input type="submit" value="Make a Reservation">
			</div>
		</form>
	</div>
</div>
</body>
</html>