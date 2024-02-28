<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String mode = request.getParameter("mode");
    if(mode !=null && mode.equals("1")) {
        session.setAttribute("mySession", "세션 영역");
    }else if(mode !=null && mode.equals("2")){
        session.removeAttribute("mySession");
    }else if(mode !=null && mode.equals("3")){
        session.invalidate();
    }
%>

<html>
<head>
    <meta charset="UTF-8">
    <title>MyListener</title>

</head>
<body>
    <script>
        function formSubmit(form, modeVal){
            form.mode.value = modeVal;
            form.submit();
        }
    </script>
    <h2>리스너 활용하기</h2>
    <form>
        <input type="hidden" name="mode"/>
        <input type="button" value="세션 속성 저장" onclick="formSubmit(this.form, 1);"/>
        <input type="button" value="세션 속성 삭제" onclick="formSubmit(this.form, 2);"/>
        <input type="button" value="세션 속성 전체삭제" onclick="formSubmit(this.form, 3);"/>
    </form>
</body>
</html>
