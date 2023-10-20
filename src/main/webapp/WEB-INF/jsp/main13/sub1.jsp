<%--
  Created by IntelliJ IDEA.
  User: admin2
  Date: 2023-09-26
  Time: 오전 9:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>input 요소들</h3>
<form action="/main13/sub2">
    <%--div*10>input[name=param$]--%>
        <div>
            <input type="text" name="param1">
        </div>
        <div>
            <input type="password" name="param2">
        </div>
        <div>
            <input type="date" name="param3">
        </div>
        <div>
            <input type="button" name="param4" value="어떤버튼😺?">
        </div>
        <div>
            <input type="number" name="param5">
        </div>
        <div>
            <input type="submit" name="param6" value="submit의 기본값은 제출">
        </div>
        <div>
            <input type="radio" name="param7">
        </div>
        <div>
            <input type="radio" name="param7">
        </div>
        <div>
            <input type="checkbox" name="param9">
        </div>
        <div>
            <input type="checkbox" name="param9">
        </div>
        <div>
            <input type="checkbox" name="param9">
        </div>
        <div>
            <input type="hidden" name="param10" value="some value">
        </div>
        <button>전송</button>
</form>

<form action="/main13/sub2">
    <div>
        <input type="text" name="param1" value="son">
    </div>
    <div>
        <input type="text" name="param2" placeholder="이름을 입력해주세요">

    </div>
    <div>
        <input type="text" maxlength="5">
    </div>
    <div>
        <input type="text" required>
    </div>
    <div>
        <input type="text" readonly value="son">
    </div>
    <div>
        <input type="text" name="param4" value="son" disabled>
    </div>
    <div>
        <input type="text" pattern="\d{3}" name="param5">
    </div>
    <div>
        <input type="checkbox" name="param6" checked id="">
    </div>
    <div>
        <input type="checkbox" name="param6" id="">
    </div>
    <div>
        <input type="radio" name="param7" id="">
    </div>
    <div>
        <input type="radio" name="param7" checked id="">
    </div>
    <button>전송</button>
    <div>
        <input type="file" multiple>
    </div>
</form>

<hr>
<form action="/main13/sub2">
    <label for="input1">
        주소
    </label>

    <input id ="input1" type="text">
    <br>
    <%-- div>div*3>label[for=check$]+lorem1^input:c#check$ --%>
    <div>
        <div>
            <label for="check1"></label>
            Lorem.
        </div>
        <input type="checkbox" name="" id="check1">
        <div>
            <label for="check2"></label>
            Asperiores?
        </div>
        <input type="checkbox" name="" id="check2">
        <div>
            <label for="check3"></label>
            Provident!
        </div>
        <input type="checkbox" name="" id="check3">
    </div>
    <input type="submit">
</form>








</body>
</html>
