<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>AnnoFilter</title>
</head>
<body>
    <form>
        <select name="searchFiled">
            <option value="title">제목</option>
            <option value="content">내용</option>
        </select>
        <input type="text" name="searchWord" value="애너테이션">
        <input type="submit" value="검색하기">
    </form>
</body>
</html>
