<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("utf-8");
%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="../css/styles.css" rel="stylesheet" />
<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js"
	crossorigin="anonymous"></script>
<title>어드민 로그인</title>
<c:choose>
	<c:when test="${result == 'loginFailed'}">
		<script>
			window.onload=function(){
				alert("아이디나 비밀번호가 틀립니다. 다시로그인 하세요!");
			}
		</script>
	</c:when>
</c:choose>
</head>
<body class="bg-primary">
	<div id="layoutAuthentication">
		<div id="layoutAuthentication_content">
			<main>
				<div class="container">
					<div class="row justify-content-center">
						<div class="col-lg-5">
							<div class="card shadow-lg border-0 rounded-lg mt-5">
								<div class="card-header">
									<h3 class="text-center font-weight-light my-4">Login</h3>
								</div>
								<div class="card-body">
									<form method="post" action="${contextPath}/admin/main.do">
										<div class="form-floating mb-3">
											<input class="form-control" id="admin_id" type="text"
												placeholder="어드민 아이디" /> <label for="inputid">아이디</label>
										</div>
										<div class="form-floating mb-3">
											<input class="form-control" id="admin_pw"
												type="password" placeholder="비밀번호" /> <label
												for="inputPassword">비밀번호</label>
										</div>
										<div class="form-check mb-3">
											<input class="form-check-input" id="inputRememberPassword"
												type="checkbox" value="" /> <label class="form-check-label"
												for="inputRememberPassword">Remember Password</label>
										</div>
										<div
											class="d-flex align-items-center justify-content-between mt-4 mb-0">
											<a class="small" href="/admin/pw.do">Forgot Password?</a> 
											<input type="submit" value="login" class="btn btn-primary" />
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</main>
		</div>
		<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script src="./js/scripts.js"></script>
</body>
</html>