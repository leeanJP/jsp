<%@ page import="com.util.CookieManager" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <%--
    로그인 시 ID를 쿠키를 통해 저장
    util에 있는 클래스를 이용해서 편리하게 코드를 재사용하는 방법
  --%>
  <%
    String loginId = CookieManager.readCookie(request, "loginId");

    String cookieCheck = "";
    if(!loginId.equals("")){
      cookieCheck = "checked";
    }
  %>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
  <h2>로그인 페이지</h2>
  <form action="IdSaveProcess.jsp" method="post">
    아이디 : <input type="text" name="user_id" value="<%=loginId%>">
    <input type="checkbox" name="save_check" value="Y" <%=cookieCheck%>>
    <br/>
    패스워드 : <input type="text" name="user_pw">
    <br/>
    <input type="submit" value="로그인">
  </form>
</body>
</html>
