<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>JSTL - choose/when/otherwise</title>
</head>
<body>
    <%--다중조건을 판단할 때 사용--%>
    <%--<c:choose>
        <c:when test="조건1">조건1 만족하는경우</c:when>          &lt;%&ndash;if&ndash;%&gt;
        <c:when test="조건2">조건2 만족하는경우</c:when>          &lt;%&ndash;else if&ndash;%&gt;
        <c:otherwise>아무 조건도 만족하지 않는경우</c:otherwise>   &lt;%&ndash;else &ndash;%&gt;
    </c:choose>--%>

    <%--변수 선언--%>
    <c:set var="number" value="100"/>
    <h2>choose 태그로 홀짝 판단</h2>
    <c:choose>
        <c:when test="${number % 2 == 0}">
            ${number}는 짝수입니다.
        </c:when>
        <c:otherwise>
            ${number}는 홀수 입니다.
        </c:otherwise>
    </c:choose>

    <h2>국영수 점수 입력하면 평균을 내어 학점 출력하기</h2>
    <form>
        국어 : <input type="text" name="kor"><br/>
        영어 : <input type="text" name="eng"><br/>
        수학 : <input type="text" name="math"><br/>
        <input type="submit" value="학점 구하기">
    </form>

    <%--모든 과목 점수가 입력되었는지 확인--%>
    <c:if test="${!(empty param.kor or empty param.eng or empty param.math)}">
        <%--평균 계산--%>
        <c:set var="avg" value="${(param.kor + param.eng + param.math) /3}"/>
        평균 점수는 ${avg} 이므로
        <c:choose>
            <c:when test="${avg>=90}">A학점</c:when>
            <c:when test="${avg>=80}">B학점</c:when>
            <c:when test="${avg>=70}">C학점</c:when>
            <c:when test="${avg>=60}">D학점</c:when>
            <c:otherwise>F학점</c:otherwise>
        </c:choose>
    </c:if>


</body>
</html>
