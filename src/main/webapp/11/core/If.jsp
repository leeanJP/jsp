<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>JSTL - if</title>
</head>
<body>
    <%--변수 선언--%>
    <c:set var="number" value="100"/>
    <c:set var="string" value="JSP"/>

<%--    <c:if test="조건식 넣는 자리" var="조건 결과를 저장할 변수명">--%>
<%--        조건이 ture일 경우 실행될 코드 --%>
<%--    </c:if>--%>

    <h2>JSTL if 태그로 홀짝 판단하기</h2>
    <c:if test="${number %2 ==0}" var="result1">
        ${number} 는 짝수입니다. <br/>
    </c:if>


    <c:if test="${string == 'Java'}" var="result2">
        문자열은 Java 입니다.<br/>
    </c:if>
    <c:if test="${not result2}" >
        문자열은 Java 가 아닙니다.<br/>
    </c:if>

    <h2> 조건식 주의 사항</h2>
    <c:if test="100" var="result3">
        EL이 아닌 정수 지정하면 false
    </c:if>
    result3 : ${result3}<br/>

    <c:if test="tRuE" var="result4">
        대소문자 구분없이 true인 경우 true 리턴<br/>
    </c:if>
    result4: ${result4}

    <c:if test=" ${ true } " var="reslut5">
        EL 양쪽에 빈 공백이 있는 경우 false<br/>
    </c:if>
    result5 : ${reslut5}<br/>
</body>
</html>
