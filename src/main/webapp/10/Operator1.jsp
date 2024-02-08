<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    int num1 = 3;
    pageContext.setAttribute("num2", 4);
    pageContext.setAttribute("num3", "5");
    pageContext.setAttribute("num4", "8");
%>
<html>
<head>
    <meta charset="UTF-8">
    <title>EL - 연산자</title>
</head>
<body>

    <h2>변수 선언 및 할당</h2>
    스크립틀릿에서 선언한 변수 : ${num1} <br/>
    page 영역에 저장된 변수 : ${num2}<br>
    변수 할당 및 즉시 출력 : ${num1= 7}<br>
    변수 할당 및 별도 출력 : ${num2= 9;''} => ${num2} <br>
    num1 = ${num1} , num2 = ${num2} , num3 = ${num3} , num4 = ${num4}

    <h2>산술 연산자</h2>
    num1 + num2 = ${num1 + num2}<br>
    num1 - num2 = ${num1 - num2}<br>
    num1 * num2 = ${num1 * num2}<br>
    num1 / num2 = ${num1 / num2}<br>

    num3 div num4 = ${num3 div num4} <br>
    num3 % num4 = ${num3 % num4} <br>
    num3 mod num4 = ${num3 mod num4} <br>

    <h2> + 연산자 덧셈만 가능 </h2>
    num1 + "34"  : ${num1 + "34"} <br>
<%--    num2 + "이십" : ${num2 + "이십"}<br>--%>
<%--    "삼십" + "사십" : ${"삼십"+ "사십"}<br>--%>

    <h2>비교 연산자</h2>
    num3 > num4 : ${num3 gt num4} <br>
    num1 < num3 : ${num1 lt num3} <br>
    num3 >= num4 : ${num3 ge num4}<br>
    num2 == num4 : ${num2 eq num4}<br>

    <h2>논리 연산자</h2>
    num3 <= num4 && num3 == num4 : ${num3 le num4 and num3 eq num4} <br>
    num3 >= num4 || num3 != num4 : ${num3 ge num4 or num3 ne num4}




</body>
</html>
