<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>LifeCycle</title>
</head>
<body>
    <script>
        function requestAction(frm, met){
            if(met ==1){
                frm.method = 'get';
            }else {
                frm.method = 'post';
            }
            frm.submit();
        }
    </script>

    <h2>서블릿 수명주기 메서드</h2>
    <form action="./LifeCycle.do">
        <input type="button" value="Get 방식 요청" onclick="requestAction(this.form, 1);">
        <input type="button" value="Post 방식 요청" onclick="requestAction(this.form, 2);">
    </form>
</body>
</html>
