<%@ page import="java.util.Enumeration" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>내장객체 - request</title>
</head>
<body>
    <h2>3. 요청헤더 정보 출력하기</h2>

    <%
        Enumeration headers = request.getHeaderNames();
        while (headers.hasMoreElements()){
            String hName = (String) headers.nextElement();
            String hValue = request.getHeader(hName);
            out.print("헤더명 : " + hName + " , 헤더값 : " + hValue + "<br/>");
        }
    %>
    <p>이 파일을 직접 실행하면 referer 정보는 출력되지 않음.</p>
</body>
</html>
