<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><tiles:insertAttribute name="title" /></title>
<style type="text/css">
	#content {
		min-height:950px;
	}
	body {
		/* tiles 제거하는 방법을 몰라서 일단 주석 */
  		/* padding-top: 80px; */
 		 /* 생략 */
	}
</style>
</head>
<body>
	<div id="container">
<%-- 		<div id="header">
			<tiles:insertAttribute name="header" />
		</div>  --%>
		<div id="content">
			<tiles:insertAttribute name="body" />
		</div>
	</div>
	
</body>
</html>