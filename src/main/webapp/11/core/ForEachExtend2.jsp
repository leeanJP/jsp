<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.common.Person" %>
<%@ page import="java.util.LinkedList" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>JSTL foreach3</title>
</head>
<body>
    <h2>List 컬렉션</h2>
    <%
        LinkedList<Person> lists = new LinkedList<>();
        lists.add(new Person("맹사성", 34));
        lists.add(new Person("장영실", 44));
        lists.add(new Person("신숙주", 54));
    %>

    <c:set var="lists" value="<%=lists%>"/>
    <c:forEach items="${lists}" var="list">
        <li>이름 :${list.name}, 나이: ${list.age}</li>
    </c:forEach>

    <h2>Map 컬렉션</h2>
    <%
        Map<String,Person> maps = new HashMap<>();
        maps.put("1st",new Person("맹사성", 34));
        maps.put("2nd",new Person("장영실", 44));
        maps.put("3rd",new Person("신숙주", 54));
    %>

    <c:set var="maps" value="<%=maps%>"/>
    <c:forEach items="${maps}" var="map">
        <li>Key => ${map.key}</li>
        <li>Value => 이름 : ${map.value.name} 나이 : ${map.value.age}</li>
    </c:forEach>


</body>
</html>
