<%--
  Created by IntelliJ IDEA.
  User: admin2
  Date: 2023-09-26
  Time: 오후 3:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>post 전송</h1>
<form action="/main14/sub4" method="post">
    <div>
        제목
        <input type="text" name="title">
    </div>
    <div>
        내용
        <textarea name="content" id="" cols="30" rows="10"></textarea>

    </div>
    <button>submit😻</button>
</form>
</body>
</html>
