<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-10-24
  Time: 오후 4:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
    <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
</head>
<body>
<div>
    <button onclick="ajax1()">button1</button>
    <script>
        function ajax1() {
            axios.get("/main38/sub1");
        }
    </script>
</div>
<div>
    <button onclick="ajax2()">button2</button>
    <script>
        function ajax2() {
            axios.get("/main38/sub2")
                .then(function (response) {
                    console.log("응답 받은 후 해야 하는 일");
                    console.log(response.data);
                    console.log(response.status);
                    console.log(response.statusText);
                    console.log(response.headers);
                    console.log(response.config);
                });
        }
    </script>
</div>
<div>
    <button onclick="ajax3()">button3</button>
    <script>
        function ajax3() {
            axios.get("/main38/sub3")
                .then(function (res) {
                    console.log(res.data);
                    console.log(res.data.age);
                    console.log(res.data.name);
                });
        }
    </script>
</div>
<div>
    <button onclick="ajax4()">button4</button>
    <script>
        function ajax4() {
            // ajax 요청
            // get /main38/sub4
            axios.get("/main38/sub4")
                .then(function (response) {
                    const data = response.data;
                    // 응답된 json 데이터를 js object로 파싱 해서
                    console.log(data);
                    // "seoul"
                    console.log(data.city);
                    // 3000
                    console.log(data.price);
                    // "son"
                    console.log(data.list[0]);
                    // "199 9-03-03"
                    console.log(data.birth);

                })
        }
    </script>
</div>
<div>
    <input type="text" id="input1" value="7">
    <button onclick="ajax5()">button5</button>
    <script>
        function ajax5() {
            const pid = document.querySelector("#input1").value;
            axios.get("/main38/sub5?id=" + pid)
                .then(function (response) {
                    const product = response.data;
                    console.log(product.ProductID);
                    console.log(product.ProductName);
                    console.log(product.Unit);
                    console.log(product.Price);
                })
        }
    </script>
</div>
<div>
    <button onclick="ajax6()">button6</button>
    <script>
        function ajax6() {
            axios.get("main38/sub2")
                .then(function () {
                    console.log("응답 완료 후 실행");
                })
                .then(function () {
                    console.log("그 다음 실행");
                })
                .then(function () {
                    console.log("또 그 다음 실행");
                })
        }
    </script>
</div>
<div>
    <button onclick="ajax7()">button7</button>
    <script>
        function ajax7() {
            axios.get("main38/sub2")
                .then(function () {
                    console.log('첫함수')
                    return "abcd";
                })
                .then(function (param) {
                    console.log('두번째 함수')
                    console.log(param)
                    return 345;
                })
                .then(function (param) {
                    console.log(param)

                })
        }
    </script>
</div>
<div>
    <button onclick="ajax8()">button8</button>
    <script>
        function ajax8() {
            axios.get("main38/sub2")
                .then(function (param) {
                    console.log('첫함수 일함')
                    return param.data;
                })
                .then(function (param) {
                    console.log('두번째 함수 일함')
                    console.log(param)
                })
        }
    </script>
</div>
<div>
    <button onclick="ajax9()">button9</button>
    <script>
        function ajax9() {

            axios.get("/main38/sub2")
                .then(response => response.data)
                .then(data => console.log(data));
        }
    </script>
</div>

<div>
    <button onclick="ajax10()">button10</button>
    <script>
        function ajax10() {
            axios.get("/main38/sub4")
                .then(response => response.data)
                .then(data => console.log(data.list[1]))
        }
    </script>
</div>

<div>
    <button onclick="ajax11()">button11</button>
    <script>
        function ajax11() {
            axios.get("/main38/sub4")
                .then(response => response.data)
                .then(({price, birth, list, city}) => console.log(data.price)); // 3000
        }
    </script>
</div>

<div>
    <button onclick="ajax12()">button12</button>
    <script>
        function ajax12() {
            axios.get("/main38/sub4")
                .then(({data}) => console.log(data.price));

        }
    </script>
</div>

<div>
    <button onclick="ajax13()">button13</button>
    <script>
        function ajax13() {
            axios.get("/main38/sub4")
                .then(response => response.data)
                .then(({price, city, country = "korea"}) => {
                    console.log(price); // 3000
                    console.log(city); // seoul
                    console.log(country); // korea
                })

        }
    </script>
</div>






<script>
    // 구조 분해 할당
    // Destucturing assigment

    let a = {
        name: "son",
        age: 30
    };

    console.log(a.name);
    console.log(a.age);

    let myName = a.name;
    let myAge = a.age;

    console.log(myName);
    console.log(myAge);

    let {name, age} = a;
    console.log(name);
    console.log(age);

    let b = {
        city: "seoul",
        country: "korea"
    };

    let {city, country} = b;
    console.log(city);
    console.log(country);

    let c ={
        email: "abc@aa.com",
        price: 300
    };

    let {email} = c;

    let d = {
        name: "lee",
        address: "paris",
        age: 77
    };
    let {name, address} = d;

    let e = {
        city2: "seoul",
        country2: "korea"
    };
    let {city2, country2, category} = e;
    console.log(city2);
    console.log(country2);
    console.log(category); // undefined

    let f = {
        name3: "kim",
        city3: "busan"
    };
    let {name3, city3 = "인천", address3 = "신촌"} = f; // 없을 떼 기본값 할당
    console.log(name3);
    console.log(city3);
    console.log(address3);

    let g = [30, 40, 50];

    let [h, i, j] = g;
    console.log(h);
    console.log(g);
    console.log(j);

    let [k, l] = g;
    console.log(k);
    console.log(l);

    let [m, ...n] = g;
    console.log(m); // 30
    console.log(n); // [40, 50]

    let [...o] = g;
    console.log(o); // [30, 40, 50]














</script>


</body>
</html>






















