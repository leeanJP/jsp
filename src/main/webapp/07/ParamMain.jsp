<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
  String pVal = "방랑시인";
%>
<html>
<head>
    <meta charset="UTF-8">
    <title>액션태그 - param</title>
</head>
<body>
  <jsp:useBean id="person" class="com.common.Person" scope="request"/>
  <jsp:setProperty name="person" property="name" value="홍길동"/>
  <jsp:setProperty name="person" property="age" value="20"/>
  <jsp:forward page="ParamForward.jsp?param1=파라미터">
    <jsp:param name="param2" value="경기도"/>
    <jsp:param name="param3" value="<%=pVal%>"/>
  </jsp:forward>



</body>
</html>
