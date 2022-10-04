<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
<style type="text/css">
#container {
	height: 1500px;
}
#neo {
	margin-top: 100px;
	float: left;
	width: 90%;
	height: 500px;
}
#content {
	margin-left: 230px;
	width: 80%;
	margin-top: -670px;
}
#aa {
	width: 90%;
	height: 70px;
	margin-top: 100px;
}
#bb {
	width: 100%;
	margin-top: 100px;
}
#header {
	height: 100px;
}
body {

}
</style>
<title><tiles:insertAttribute name="title" /></title>
</head>
<body>
	<div id="container">
		<div id="header">
			<tiles:insertAttribute name="header" />
		</div>
		<div id="neo">
			<tiles:insertAttribute name="side" />
			<div id="content">
				<div id="aa">
				<tiles:insertAttribute name="c_header" />
				</div>
				<div id="bb">
				<tiles:insertAttribute name="body" />
				</div>
			</div>
		</div>

	</div>
</body>
</html>