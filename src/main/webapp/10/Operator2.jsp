<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    pageContext.setAttribute("num1", 9);
    pageContext.setAttribute("num2", "10");

    pageContext.setAttribute("nullStr", null);
    pageContext.setAttribute("emptyStr", "");
    pageContext.setAttribute("lengthZero", new Integer[0]);
    pageContext.setAttribute("sizeZero", new ArrayList<Object>());

%>
<html>
<head>
    <meta charset="UTF-8">
    <title>EL - 연산자</title>
</head>
<body>
    <h2>empty 연산자</h2>
    <%-- 값이 없을 때 true 반환하는 연사낮--%>
    <%-- null 빈문자열 길이가 0인배열, size 0 컬렉션--%>
    empty nullStr : ${empty nullStr} <br/>
    empty emptyStr : ${empty emptyStr} <br/>
    empty lengthZero : ${empty lengthZero} <br/>
    empty sizeZero : ${empty sizeZero} <br/>

    <h2>삼항 연산자</h2>
    num1 gt num2 ? "참": "거짓" => ${num1 gt num2 ? "num1이 크다": "num2가 크다"}


    <h2>null 연산</h2>
    null + 10 : ${null + 10}<br/>
    nullStr + 10 : ${nullStr + 10}<br/>
    param.noVar > 10 : ${param.noVar > 10}
</body>
</html>
