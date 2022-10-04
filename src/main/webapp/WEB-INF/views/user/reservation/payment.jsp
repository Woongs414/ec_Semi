<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<c:set var="now" value="<%=new java.util.Date()%>" />
<%
request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://js.tosspayments.com/v1"></script>
<title>결제 창</title>
</head>
<body>
<section>
      <!-- ... -->
      <span>총 주문금액</span>
      <span>50,000 원</span>
      <button id="payment-button">결제하기</button>
    </section>
    <script>
      var clientKey = 'test_ck_YZ1aOwX7K8m9OjPd5eP8yQxzvNPG'
      var tossPayments = TossPayments(clientKey)

      var button = document.getElementById('payment-button') // 결제하기 버튼

      button.addEventListener('click', function () {
        tossPayments.requestPayment('카드', {
          amount: 15000,
          orderId: '1YQR5Znm6hiKv7KcVZtH0',
          orderName: '토스 티셔츠 외 2건',
          customerName: '박토스',
          successUrl: 'http://localhost:8080/ec/payment/success',
          failUrl: 'http://localhost:8080/ec/payment/fail',
        })
      })
    </script>
</body>
</html>