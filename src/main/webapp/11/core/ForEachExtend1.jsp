<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>JSTL forEach2</title>
</head>
<body>
    <h2>향상된 for문 형태의 foreach 태그</h2>
    <%
        String[] rgba = {"Red", "Green", "Blue", "Black"};

    %>
    <c:forEach items="<%=rgba%>" var="item">
        <span style="color: ${item}">${item}</span>
    </c:forEach>

    <h2>varStatus 속성 살펴보기</h2>
    <table border="1">
        <c:forEach items="<%=rgba%>" var="c" varStatus="loop">
            <tr>
                <td>count : ${loop.count}</td>
                <td>index : ${loop.index}</td>
                <td>current : ${loop.current}</td>
                <td>first : ${loop.first}</td>
                <td>last : ${loop.last}</td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
