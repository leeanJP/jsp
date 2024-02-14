<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>JSTL - forTokens</title>
</head>
<body>
    <h2>JSTL forTokens 사용</h2>
    <%
        String rgba = "Red,Green,Blue,Black";
        String num = "010-1234-5678_1111";
    %>

    <c:forTokens items="<%=rgba%>" delims="," var="c">
        <span style="color: ${c}">${c}</span>
    </c:forTokens>

    <c:forTokens items="<%=num%>" delims="-_" var="tel">
        <p>${tel}</p>
    </c:forTokens>
</body>
</html>
