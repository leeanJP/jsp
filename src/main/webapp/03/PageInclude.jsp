<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    int pInt2 = (Integer)pageContext.getAttribute("pageInt");
    //String pStr2 = pageContext.getAttribute("pageStr").toString();
    Person person2 = (Person) pageContext.getAttribute("pagePerson");
%>

<ul>
    <li>Include 페이지 int: <%=pInt2%></li>
    <li>Include 페이지 str: <%=pageContext.getAttribute("pageStr")%></li>
    <li>Include 페이지 person: <%=person2.getName()%> , <%=person2.getAge()%></li>
</ul>