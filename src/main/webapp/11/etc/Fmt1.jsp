<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="fmt" uri="jakarta.tags.fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--포매팅 태그는 국가별 언어, 날짜, 시간, 숫자 형식 설정하는 태그--%>
<html>
<head>
    <meta charset="UTF-8">
    <title>JSTL fmt 1</title>
</head>
<body>
    <h2>숫자 포맷 설정</h2>
    <c:set var="num1" value="12345000000"/>
    콤마 o : <fmt:formatNumber value="${num1}"/> <br/>
    콤마 x : <fmt:formatNumber value="${num1}" groupingUsed="false"/> <br/>
    <fmt:formatNumber value="${num1}" type="currency" var="printNum1"/>
        통화기호 : ${printNum1} <br/>
    <fmt:formatNumber value="0.03" type="percent" var="printNum2"/>
        퍼센트 : ${printNum2} <br/>

    <h2>문자열을 숫자로 변경</h2>
    <c:set var="num2" value="6,789.01"/>
    <fmt:parseNumber value="${num2}" pattern="00,000.00" var="printNum3"/>
        소수점까지 : ${printNum3}<br/>
    <fmt:parseNumber value="${num2}" integerOnly="true" var="printNum4"/>
        정수부분만 : ${printNum4}<br/>
</body>
</html>
