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
  		margin:0;
	}
</style>
</head>
<body>
	<div id="container">
<%--  		<div id="header">
			<tiles:insertAttribute name="header" />
		</div>  --%>
<%-- 		<div id="sidebar-right">
			<tiles:insertAttribute name="side" />
		</div> --%>
		<div id="content">
			<tiles:insertAttribute name="body" />
		</div>
<%--  		<div id="footer">
			<tiles:insertAttribute name="footer" />
		</div> --%>
	</div>
	<!-- Bootstrap core JS-->
<!-- 	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script> -->
	<!-- Core theme JS-->
	
</body>
</html>