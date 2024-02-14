<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Hello Servlet</title>
</head>
<body>
  <h2>web.xml 에서 매핑 후 JSP 에서 출력하기</h2>
  <p>
    <strong><%=request.getAttribute("message")%></strong>
    <br/>
    <a href="./HelloServlet.do">바로가기</a>
  </p>
</body>
</html>
