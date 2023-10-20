<%--
  Created by IntelliJ IDEA.
  User: admin2
  Date: 2023-10-19
  Time: 오전 10:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>고객 조회😽</h3>
<form action="/main30/sub15">
    <input type="text" name="customerId" placeholder="고객번호">
    <button>조회</button>
</form>

${message}

<hr>

<h3>고객 정보 수정</h3>
<form action="/main30/sub16" method="post">
    <input type="text" name="customerId" value="${customer.customerId}" readonly>
    <input type="text" name="customerName" value="${customer.customerName}">
    <input type="text" name="address" value="${customer.address}">
    <input type="text" name="city" value="${customer.city}">
    <button>수정!</button>
</form>
</body>
</html>
