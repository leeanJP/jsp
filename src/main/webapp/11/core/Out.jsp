<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>JSTL Out</title>
</head>
<body>
    <%--표현식처럼 변수 출력할 때 사용--%>
    <%--null 일때 default 값이 출력된다--%>

    <c:set var="iTag">
        i 태그는 <i>기울임</i>을 표현합니다.
    </c:set>

    <h4>기본 사용</h4>
    <c:out value="${iTag}"></c:out>

    <h4>escapeXml 속성</h4>
    <%--특수문자를 변환할지 여부 기본값은 true--%>
    <%--false로 지정 시 HTML 태그를 해석해 마크업이 적용된 상태로 출력된다.--%>
    <c:out value="${iTag}" escapeXml="false"></c:out>

    <h2>default 속성</h2>
    <c:out value="${param.namve}" default="이름없음"/>
    <c:out value="" default="빈 문자열도 값임"/>

</body>
</html>
