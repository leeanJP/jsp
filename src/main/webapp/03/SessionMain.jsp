<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Session 영역</title>

    <%
        ArrayList<String> lists = new ArrayList<>();
        lists.add("리스트");
        lists.add("컬렉션");

        session.setAttribute("lists", lists);

    %>
</head>
<body>
    <%--  세션 객체는 클라이언트가 브라어저를 닫을 때 까지 공유 가능
            세션은 클라이언트가 서버에 접속해 있는 상태 혹은 단위를 뜻한다.
    --%>

    <h2>페이지 이동 후 session영역의 속성 읽기</h2>
    <a href="SessionLocation.jsp">sessionLocation 페이지 이동</a>
</body>
</html>
