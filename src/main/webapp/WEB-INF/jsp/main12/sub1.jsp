<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-09-25
  Time: 오후 2:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<h1>form 요소</h1>

<form>
    <input type="text" name="param1">
    <br>
    <input type="text" name="param2">
    <br>
    <%-- select(option), textarea --%>
    <button>전송</button>
</form>

<hr>

<form>
    <%--
    전송버튼 클릭시
    ?name=lee&age=44&address=seoul&email=abc@gmail.com
    --%>
    <%--(input[name]+br)*4--%>
    <input type="text" name="name">
    <br>
    <input type="text" name="age">
    <br>
    <input type="text" name="address">
    <br>
    <input type="text" name="email">
    <br>
    <button>전송</button>
</form>
<hr>
<h3>action 속성 : request 파라미터들을 어디로 보낼 지 결정</h3>
<p>actioc 속성이</p>
<form action="http://www.naver.com">
    <input type="text" name="query">
    <br>
    <button>전송😺</button>
</form>
<form action="http://www.daum.net">
    <input type="text" name="q">
    <br>
    <button>다음에서 검색🐱🐱</button>
</form>

<hr>
<h1>action 속성값 : /로 시작하는 경우 path가 결정됨</h1>
<form action="/">
    <input type="text" name="email">
    <button>전송</button>
</form>
<%--전송버튼 클릭시 reqquest parameter가 /main12/sub2로 전송되도록--%>
<form action="/main12/sub2">
    <input type="text" name="email">
    <button>전송🐱</button>
</form>
<hr>
<h1>action 속성 값 : / 도 아니고 protocol(scheme)이 아니면 현재페이지의 상대경로</h1>
<h1>path에서 마지막 / 기준 (현재경로 기준)</h1>
<form action="main12/sub2">
    <input type="text" name="email">
    <button>전송</button>
</form>
<form action=""sub3>
    <input type="text" name="address">
    <button>전송</button>
</form>

<%-- .. : 한 경로 위 --%>
<form action="..">
    <input type="text" name="age">
    <button>전송</button>
</form>








</body>
</html>
