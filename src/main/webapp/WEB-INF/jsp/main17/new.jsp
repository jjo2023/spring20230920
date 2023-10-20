<%--
  Created by IntelliJ IDEA.
  User: admin2
  Date: 2023-09-27
  Time: 오후 3:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>새 글 작성</h1>
<form method="post">
    <div>
        <label for="titleInput">제목</label>
        <input type="text" id="titleInput" name="title">
    </div>
    <div>
    <textarea name="body" id="" cols="30" rows="10" placeholder="본문"></textarea>

    </div>
    <div>
        <button>전송😺</button>
    </div>
</form>

</body>
</html>
