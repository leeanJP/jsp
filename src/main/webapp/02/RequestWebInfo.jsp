<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>내장객체 - Request</title>
</head>
<body>
    <h2>1. 클라이언트와 서버의 환경정보 읽기</h2>
    <ul>
        <li>데이터 전송 방식 :<%=request.getMethod()%></li>
        <li>URL : <%=request.getRequestURL()%></li>
        <li>URI : <%=request.getRequestURI()%></li>
        <li>프로토콜 : <%=request.getProtocol()%></li>
        <li>서버명 : <%=request.getServerName()%></li>
        <li>서버 포트: <%=request.getServerPort()%></li>
        <li>클라이언트 IP 주소 : <%=request.getRemoteAddr()%></li>
        <li>쿼리 스트링 : <%=request.getQueryString()%></li>
        <li>전송된 값 1: <%=request.getParameter("eng")%></li>
        <li>전송된 값 2: <%=request.getParameter("han")%></li>
    </ul>

</body>
</html>
