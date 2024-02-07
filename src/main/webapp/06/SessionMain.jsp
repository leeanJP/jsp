<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.sql.Date" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>

    <%
        SimpleDateFormat dateFormat = new SimpleDateFormat("YYYY-MM-DD HH:mm:ss");
        long creationTime = session.getCreationTime();// 세션 생성 시간
        String creationTimeStr = dateFormat.format(new Date(creationTime));

        long lastTime = session.getLastAccessedTime();//마지막 요청 시간
        String lastTimeStr = dateFormat.format(new Date(lastTime));

//        session.setMaxInactiveInterval(1800);

    %>
</head>
<body>
    <h2>session 설정확인</h2>

    <ul>
        <li>세션 유지 시간    <%=session.getMaxInactiveInterval()%></li>
        <li>세션 아이디    <%=session.getId()%></li>
        <li>최초 요청시간    <%=creationTimeStr%></li>
        <li>마지막 요청시간    <%=lastTimeStr%></li>
    </ul>
</body>
</html>
