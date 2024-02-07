<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>액션태그 useBean</title>
</head>
<body>
    <jsp:useBean id="person" class="com.common.Person"/>
    <jsp:setProperty name="person" property="*"/>

    <h2>getProperty 액션 태그로 자바빈즈 속성 가져오기</h2>
    <ul>
        <li>이름 : <jsp:getProperty name="person" property="name"/></li>
        <li>나이 : <jsp:getProperty name="person" property="age"/></li>
    </ul>
</body>
</html>
