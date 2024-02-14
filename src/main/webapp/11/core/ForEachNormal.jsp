<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>일반 for문 형태의 forEach 태그</title>
</head>
<body>
  <h2>일반 for문 형태</h2>

<%--  <%--%>
<%--    for(int i=1; i<=3; i++){--%>

<%--    }--%>
<%--  %>--%>

  <c:forEach begin="1" end="3" step="1" var="i">
    <p>반복 ${i}</p>
  </c:forEach>

  <h2>var status 속성 살펴보기</h2><table border="1">
    <c:forEach begin="3" end="5" step="1" varStatus="loop">
      <tr>
        <td>count : ${loop.count}</td>
        <td>index : ${loop.index}</td>
        <td>current : ${loop.current}</td>
        <td>first : ${loop.first}</td>
        <td>last : ${loop.last}</td>
      </tr>
    </c:forEach>
  </table>



  <h2>1에서 100까지 정수 중 홀수 총 합</h2>

  <%--1. 1~100까지 for문 돌리기--%>
  <c:forEach begin="1" end="100" var="j">
    <%--2. for문 돌면서 홀수 인지 판별하기--%>
    <c:if test="${j %2 !=0}">
      <%--3. 홀수면 변수에 그 값 더해주기--%>
      <c:set var="sum" value="${sum + j}"/>
    </c:if>
  </c:forEach>
  <%--4. 출력하기--%>
  1~ 100까지 정수 중 홀수 총 합은 ${sum}
</body>
</html>
