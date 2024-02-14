<%@ page import="java.util.Date" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>JSTL Fmt 2</title>
</head>
<body>
    <%--날짜 타입과 관련된 포매팅--%>
    <c:set var="today" value="<%=new Date()%>"/>
    <h2>날짜 포맷</h2>
    full : <fmt:formatDate value="${today}" type="date" dateStyle="full"/><br>
    short : <fmt:formatDate value="${today}" type="date" dateStyle="short"/><br>
    long : <fmt:formatDate value="${today}" type="date" dateStyle="long"/><br>
    default : <fmt:formatDate value="${today}" type="date" dateStyle="default"/><br>

    <h2>시간 포맷</h2>
    full : <fmt:formatDate value="${today}" type="time" timeStyle="full"/><br>
    short : <fmt:formatDate value="${today}" type="time" timeStyle="short"/><br>
    long : <fmt:formatDate value="${today}" type="time" timeStyle="long"/><br>
    default : <fmt:formatDate value="${today}" type="time" timeStyle="default"/><br>

    <h2>날짜 시간 표시</h2>
    <fmt:formatDate value="${today}" type="both" dateStyle="full" timeStyle="full"/> <br/>
    <fmt:formatDate value="${today}" type="both" pattern="YYYY-MM-dd hh:mm:ss"/><br/>

    <h2>타임존 설정</h2>
    <fmt:timeZone value="GMT">
        <fmt:formatDate value="${today}" type="both" dateStyle="full" timeStyle="full"/><br/>
    </fmt:timeZone>
    <fmt:timeZone value="America/Chicago">
        <fmt:formatDate value="${today}" type="both" dateStyle="full" timeStyle="full"/><br/>
    </fmt:timeZone>

    <h2>로케일 설정</h2>
    한글로 설정 : <fmt:setLocale value="ko_kr"/>
    <fmt:formatNumber type="currency" value="10000"/>
    <fmt:formatDate value="${today}"/> <br/>

    일어로 설정: <fmt:setLocale value="ja_JP"/>
    <fmt:formatNumber type="currency" value="10000"/>
    <fmt:formatDate value="${today}"/> <br/>

    영어로 설정 : <fmt:setLocale value="en_US"/>
    <fmt:formatNumber type="currency" value="10000"/>
    <fmt:formatDate value="${today}"/> <br/>


</body>
</html>
