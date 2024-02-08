<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
//    pageContext.setAttribute("scopeValue", "페이지영역");
    request.setAttribute("scopeValue", "리퀘스트영역");
    session.setAttribute("scopeValue", "세션영역");
    application.setAttribute("scopeValue", "애플리케이션영역");
%>

<html>
<head>
    <meta charset="UTF-8">
    <title>EL - 내장객체</title>
</head>
<body>
    <h2>Implicit Obj Main 페이지</h2>
    <ul>
        <li>페이지 영역 : ${pageScope.scopeValue}</li>
        <li>리퀘스트 영역 : ${requestScope.scopeValue}</li>
        <li>세션 영역 : ${sessionScope.scopeValue}</li>
        <li>애플리케이션 영역 : ${applicationScope.scopeValue}</li>
    </ul>

    <h2>영역 지정없이 속성 출력</h2>
    <ul>
        <li>${scopeValue}</li>
    </ul>

    <jsp:forward page="ImplictForward.jsp"></jsp:forward>
</body>
</html>
