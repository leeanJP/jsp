<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>JSTL URL</title>
</head>
<body>
    <c:set var="requestVar" value="MustHave" scope="request"/>
    <c:url value="OtherPage.jsp" var="url">
        <c:param name="user_param1" value="Must"/>
        <c:param name="user_param2">Have</c:param>
    </c:url>z
    <a href="${url}">OtherPage.jsp 바로가기</a>
</body>
</html>
