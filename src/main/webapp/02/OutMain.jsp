<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>내장객체 out</title>
</head>
<body>
    <%--
        out 내장객체
         > 브라우저에 출력할 때 사용
          <%=%> 표현식으로 출력하는 경우가 편해서 out 내장객체 자주 사용하지는 않음.

        out 내장 객체는 버퍼를 사용함
        모든 정보는 버퍼에 먼저 저장된 후 웹브라우저에 출력됨
    --%>
    <%
        //버퍼 내용 삭제하기
        out.print("출력되지 않는 텍스트");
        out.clearBuffer();

        out.print("<h2> out 내장객체</h2>");

        out.print("출력 버퍼의 크기" + out.getBufferSize() + "<br/>");
        out.print("남은 버퍼의 크기" + out.getRemaining() + "<br/>");

        out.flush();  // 버퍼 내용 출력
        out.print("flush 후 버퍼의 크기" + out.getRemaining() + "<br/>");

        out.print(1);
        out.print(false);
        out.print('가');
    %>

</body>
</html>
