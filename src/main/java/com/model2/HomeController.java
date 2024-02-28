package com.model2;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


public class HomeController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req , HttpServletResponse resp) throws ServletException, IOException {
        //DAO 생성
        System.out.println("home 컨트롤러 진입");
        MVCBoardDAO dao = new MVCBoardDAO();
        Map<String, Object> map = new HashMap<>();
        //게시물 목록 가져오기
        List<MVCBoardDTO> boardList = dao.selectListPage(map);
        dao.close();

        req.setAttribute("boardList",boardList);
        req.getRequestDispatcher("/14/List.jsp").forward(req,resp);
    }
}
