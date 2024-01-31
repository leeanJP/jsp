<%@ page contentType="text/html;charset=UTF-8" language="java"
    pageEncoding="UTF-8"
%>
<%!
    String str3 ="JSP";
    String str4 ="안녕하세요~~~";

%>

<%-- test를 위한 코드 --%>
<%--
asdasdasd
    <%@ %> 지시어
        > JSP 페이지를 자바 코드로 변환하는데 필요한 정보를 JSP 엔진에 알려준다.
          보통 스크립트 언어, 인코딩 방식 설정
      page 지시어      : jsp페이지에 대한 정보 설정
      include 지시어   : 현재 페이지에 외부페이지를 포함시킨다.
      taglib 지시어    : 표현 언어에서 사용할 JSTL, 자바클래스를 선언한다.

    스크립트 요소는 JSP에서 자바코드를 사용할 수 있게 해준다.

    <%! %> 스크립트 요소(선언부)
        > 표현식이나, 스크립틀릿에서 사용할 멤버 변수, 메소드를 선언한다.
            서블릿으로 변환시에 _jspService() 메서드 외부에 선언된다.

    <% %>  스크립트 요소(스크립틀릿)
        > JSP 페이지가 요청을 받아서 실행될때 동작해야할 코드를 작성하는 영역
           _jspService() 내부에 기술된다.
           자바에서는 메소드 내부에 또 다른 메서드를 선언하는게 불가능
<%-- test를 위한 코드 --%>
    <%= %> 스크립트 요소(표현식)
        > 실행 결과로 하나의 값이 남는 문장
          상수, 변수, 수식,메서드반환값

--%>
<html>
<head>
<%-- test를 위한 코드 --%>
    <title>Hello JSP</title>
</head>
<body>
<%-- test를 위한 코드 --%>
    <h2>처음 만드는 <%= str3%></h2>
    <p>
        <%
            out.println(str4 + str3 + "입니다. 열심히 공부합시다.");
        %>
    </p>
</body>
</html>
