<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>JSTL catch</title>
</head>
<body>
    <h2>자바 코드 예외 </h2>
    <%--예외 발생 시 예외처리하는 역할--%>

    <%
        int num1 = 100;

    %>
    <c:catch var="eMsg">
        <%
            int result = num1/0;
        %>
    </c:catch>
    예외 내용 : ${eMsg}

    <h2>EL 에서의 예외</h2>
    <c:set var="num2" value="200"/>
    <c:catch var="eMsg">
        ${"일" + num2}
    </c:catch>
    예외 내용 : ${eMsg}




</body>
</html>
