<%@ page import="com.model1.board.BoardDAO" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.Objects" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="com.model1.board.BoardDTO" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    //DAO 생성
    BoardDAO dao = new BoardDAO();

    //사용자 검색 조건 입력
    Map<String, Object> param = new HashMap<>();
    String searchField = request.getParameter("searchField");
    String searchWord = request.getParameter("searchWord");

    if(searchWord != null){
        param.put("searchField", searchField);
        param.put("searchWord", searchWord);
    }
    System.out.println(param.get("searchField") +": " +  param.get("searchWord"));
    //게시물 수 확인
    int totalCount = dao.selectCount(param);
    //게시물 목록
    List<BoardDTO> boardList = dao.selectList(param);
    dao.close();

%>

<html>
<head>
    <meta charset="UTF-8">
    <title>회원제 게시판</title>
</head>
<body>
    <jsp:include page="../common/Link.jsp"></jsp:include>
    <h2>목록 보기</h2>
    <%--검색 조건--%>
    <form method="get">
        <table border="1" width="90%">
            <tr>
                <td align="center">
                    <select name="searchField">
                        <option value="title">제목</option>
                        <option value="content">내용</option>
                    </select>
                    <input type="text" name="searchWord">
                    <input type="submit" value="검색">
                </td>
            </tr>
        </table>
    </form>

    <%--게시물 목록 테이블--%>
    <table border="1" width="90%">
        <tr>
            <th width="10">번호</th>
            <th width="50">제목</th>
            <th width="15">작성자</th>
            <th width="10">조회수</th>
            <th width="15">작성일</th>
        </tr>

        <%--게시물이 하나도 없을때 --%>
        <%
            if(boardList.isEmpty()){
        %>
            <tr>
                <td colspan="5" align="center">
                    등록된 게시물이 없습니다.
                </td>
            </tr>
        <%
            //게시물이 있을 때
            } else {
                //화면상에서 게시물 번호
                int virtualNum = 0;
                for(BoardDTO dto : boardList){
                    virtualNum = totalCount--;
        %>
                    <tr align="center">
                        <td><%=virtualNum%></td> <%--게시글 번호--%>
                        <td align="left">
                            <a href="View.jsp?num=<%=dto.getNum()%>">
                            <%=dto.getTitle()%>
                            </a>
                        </td>
                        <td align="center"><%=dto.getId()%></td>
                        <td align="center"><%=dto.getVisitcount()%></td>
                        <td align="center"><%=dto.getPostdate()%></td>
                    </tr>
        <%
                }
            }

        %>

    </table>

    <table border="1" width="90%">
        <tr align="right">
            <td>
                <button type="button" onclick="location.href='Write.jsp'">
                    글쓰기
                </button>
            </td>
        </tr>
    </table>



</body>
</html>
