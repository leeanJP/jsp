<%@ page import="com.el.MyElClass" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="mytag" uri="/WEB-INF/MyTagLib.tld" %>
<%
    MyElClass myClass = new MyElClass(); //객체 생성
    pageContext.setAttribute("myClass", myClass);
%>

<html>
<head>
    <meta charset="UTF-8">
    <title>EL 메소드 호출</title>
</head>
<body>
    <h2>영역에 저장 후 메서드 호출</h2>
    001225-3000000 => ${myClass.getGender("001225-3000000")}<br/>
    001225-4000000 => ${myClass.getGender("001225-4000000")}<br/>

    <h2>클래스명을 통해 정적 메소드 호출</h2>
    ${MyElClass.showGugudan(9)}

    <h2>TLD 파일을 사용해 정적메소드 호출</h2>
    <ul>
        <li>mytag:isnumber("100") => ${mytag:isNumber("100")}</li>
        <li>mytag:isnumber("이백") => ${mytag:isNumber("이백")}</li>
    </ul>
</body>
</html>
