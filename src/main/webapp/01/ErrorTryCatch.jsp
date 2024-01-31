<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        try {
            int Age = Integer.parseInt(request.getParameter("age")) + 10;
            out.println("10년 후 당신의 나이는" + Age + "입니다." );
        }catch (Exception e){
            out.println("예외 발생 : 매개변수 age가 없습니다.");
        }
    %>
</body>
</html>
