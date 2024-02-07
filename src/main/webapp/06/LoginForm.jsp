<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Session Login 구현</title>
</head>
<body>

    <jsp:include page="../common/Link.jsp"></jsp:include>
    <h2>로그인 페이지</h2>

    <span style="color: red; font-size: 1.2em;">
        <%= request.getAttribute("LoginErrMsg") == null ? "": request.getAttribute("LoginErrMsg")%>
    </span>

    <%
        if(session.getAttribute("UserId") == null){
    %>
        <script>
            function validateForm(form){
                if(!form.user_id.value){
                    alert("아이디를 입력하세요");
                    return false;
                }else if(!form.user_pwd.value){
                    alert("패스워드를 입력하세요");
                    return false;
                }
            }

        </script>
        <form action="LoginProcess.jsp" method="post" name="loginFrm" onsubmit="return validateForm(this)">
            아이디 : <input type="text" name="user_id"/><br/>
            패스워드 : <input type="password" name="user_pwd"/><br/>
            <input type="submit" value="로그인">
        </form>
    <%
        } else {
    %>
        <%=session.getAttribute("UserName")%> 님, 로그인 하셨습니다. <br/>
        <a href="Logout.jsp">[로그아웃]</a>
    <%
        }
    %>
</body>
</html>
