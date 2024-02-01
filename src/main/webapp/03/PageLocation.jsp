<%@ page import="com.common.Person" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>page 이동 후 page 영역 속성 값 읽기</title>
</head>
<body>
    <%
        Object pInt = pageContext.getAttribute("pageInt");
        Object pStr = pageContext.getAttribute("pageStr");
        Object pPer = pageContext.getAttribute("pagePerson");
    %>

    <ul>
        <li><%=(pInt == null) ? "값 없음" : pInt%></li>
        <li><%=(pStr == null) ? "값 없음" : pStr%></li>
        <li><%=(pPer == null) ? "값 없음" : ((Person)pPer).getName()%></li>
    </ul>
</body>
</html>
