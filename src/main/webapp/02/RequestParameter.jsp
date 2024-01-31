<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>내장객체 - request</title>
</head>
<body>
    <%
        request.setCharacterEncoding("UTF-8");
        String id = request.getParameter("id");
        String sex = request.getParameter("sex");
        String[] favo = request.getParameterValues("favo");
        // ["eco", "pol", "ent"]


        String favoStr = "";
        if(favo != null){
            for(int i=0; i<favo.length; i++){
                favoStr += favo[i] + " ,";
            }
//            for(String s : favo){
//                favoStr += s + " ";
//            }

        }
        String intro = request.getParameter("intro").replace("\r\n" , "<br/>");
    %>

    <ul>
        <li>아이디 : <%=id%></li>
        <li>성별 : <%=sex%></li>
        <li>관심사: <%=favoStr%></li>
        <li>자기소개 : <%=intro%></li>
    </ul>
</body>
</html>
