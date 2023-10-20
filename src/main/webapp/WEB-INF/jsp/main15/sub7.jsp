<%--
  Created by IntelliJ IDEA.
  User: admin2
  Date: 2023-09-27
  Time: 오전 9:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>좋아하는 음식들 고르기</h1>
<form action="/main15/sub8" method="post">
    <div>
        <label for="input1">쌀국수</label>
        <input type="checkbox" name="food" id="input1" value="noodle">
    </div>
    <div>
        <label for="input2">피자</label>
        <input type="checkbox" name="food" id="input2" value="pizza">
    </div>
    <div>
        <label for="input3">서브웨이</label>
        <input type="checkbox" name="food" id="input3" value="subway">
    </div>
    <div>
        <label for="input4">돈까스</label>
        <input type="checkbox" name="food" id="input4" value="pork">
    </div>
    <div>
        <label for="input5">샤브샤브</label>
        <input type="checkbox" name="food" id="input5" value="샤브샤브">
    </div>
    <button>전송😽</button>
</form>



</body>
</html>
