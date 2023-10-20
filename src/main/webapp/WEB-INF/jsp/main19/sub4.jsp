<%--
  Created by IntelliJ IDEA.
  User: admin2
  Date: 2023-10-04
  Time: 오후 3:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>고객들 sub4작성😸</h3>
<table>
    <tr>
        <th>ID</th>
        <th>NAME</th>
        <th>CITY</th>
        <th>COUNTRY</th>
    </tr>
</table>
<c:forEach items="${customers}" var="customers">
    <tr>
        <td>${customers.id}</td>
        <td>${customers.name}</td>
        <td>${customers.city}</td>
        <td>${customers.country}</td>
    </tr>
</c:forEach>
</body>
</html>
