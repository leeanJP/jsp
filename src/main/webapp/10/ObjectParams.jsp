<%@ page import="com.common.Person" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>EL - 객체 매개변수 전달</title>
</head>
<body>
    <%
        request.setAttribute("personObj", new Person("홍길동", 100));
        request.setAttribute("StringObj", "문자열");
        request.setAttribute("IntegerObj", new Integer(10));
    %>

    <jsp:forward page="ObjectResult.jsp">
        <jsp:param name="firstNum" value="10"/>
        <jsp:param name="secondNum" value="20"/>
    </jsp:forward>

</body>
</html>
