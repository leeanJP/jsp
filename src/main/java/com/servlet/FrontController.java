package com.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("*.one")
public class FrontController extends HelloServlet{
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
        throws ServletException, IOException {

        System.out.println("FrontController doGet 진입");

        String uri = req.getRequestURI();
        int lastSlash = uri.lastIndexOf("/");
        String commandStr = uri.substring(lastSlash);
//        <li><a href="../12/regist.one">회원가입</a> </li>

        if(commandStr.equals("/regist.one")){
            registFun(req);
        }else if(commandStr.equals("/login.one")){
            loginFun(req);
        }else if(commandStr.equals("/freeboard.one")){
            freeboardFun(req);
        }

        req.setAttribute("uri", uri);
        req.setAttribute("commandStr", commandStr);
        req.getRequestDispatcher("/12/FrontController.jsp").forward(req, resp);

    }

    //페이지별 처리 메서드

    void registFun(HttpServletRequest req){
        System.out.println("회원가입");
        req.setAttribute("resultValue", "<h2>회원가입</h2>");
    }

    void loginFun(HttpServletRequest req){
        System.out.println("로그인");
        req.setAttribute("resultValue", "<h2>로그인</h2>");
    }
    void freeboardFun(HttpServletRequest req){
        System.out.println("자유게시판");
        req.setAttribute("resultValue", "<h2>자유게시판</h2>");
    }

}
