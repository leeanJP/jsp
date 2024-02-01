<%@ page import="com.common.Person" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Application 영역</title>
</head>
<body>
    <%--
        웹 애플리케이션 당 하나의 applicatio 객체 생성
        서버를 닫기 전까지 계속 유지 된다.
        클라이언트가 요청하는 모든 페이지가 appication 객체를 공유함.
    --%>

    <%
        Map<String, Person> maps = new HashMap<>();
        maps.put("person1", new Person("제우스", 22));
        maps.put("person2", new Person("오너", 23));
        maps.put("person3", new Person("페이커", 24));
        maps.put("person4", new Person("구마유시", 25));
        maps.put("person5", new Person("케리아", 26));
        application.setAttribute("maps" ,maps);
    %>

    <p>application 영역에 속성이 저장되었습니다.</p>

</body>
</html>
