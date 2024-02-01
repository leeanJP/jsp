<%@ page import="com.common.Person" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Set" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Application 영역</title>
</head>
<body>
    <%
        Map<String, Person> maps = (Map<String, Person>) application.getAttribute("maps");
        Set<String> keys = maps.keySet();

        for(String key : keys){
            Person person = maps.get(key);
            out.print(String.format("이름 : %s 나이 : %d <br/>", person.getName(), person.getAge()));
        }
    %>
</body>
</html>
