<%@ page contentType="text/html;charset=UTF-8" language="java"
         isErrorPage="true"
%>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
    <h2>
        서비스 중 일시적 오류가 발생했습니다.
    </h2>
    <p>
        오류명 : <%= exception.getClass().getName()%>
        오류 메세지 : <%= exception.getMessage()%>
    </p>
</body>
</html>
