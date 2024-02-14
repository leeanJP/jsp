<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%--response 내장객체 sendRedirect 와 동일하게 페이지 이동 처리--%>
    <meta charset="UTF-8">
    <title>JSTL Redirect</title>
</head>
<body>
    <c:set var="requestVar" value="MustHave" scope="request"/>
    <c:redirect url="OtherPage.jsp">
        <c:param name="user_param1" value="출판사"/>
        <c:param name="user_param2" value="골든래빗"/>
    </c:redirect>

</body>
</html>
