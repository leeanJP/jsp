package com.util;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.jsp.JspWriter;

import java.io.IOException;
import java.io.PrintWriter;

public class JSFunction {
    //메세지 알림창 띄우고 특정 페이지로 이동 시키는 자바스크립트 함수
    public static void alertLocation(String msg, String url, JspWriter out){

        try {
            String script = ""
                    + "<script>"
                    + "alert('" + msg +"');"
                    + "location.href='" + url+"';"
                    + "</script>";
            out.println(script);
        } catch (Exception e) {
        }

    }

    //메시지 알림창을 띄우고 이전 페이지로 돌아가는 JS 함수
    public static void alertBack(String msg, JspWriter out){

        try {
            String script = ""
                    + "<script>"
                    + "alert('" + msg +"');"
                    + "history.back();"
                    + "</script>";
            out.println(script);
        } catch (Exception e) {
        }

    }

    public static void alertLocation(HttpServletResponse resp, String msg, String url){
        try {
            resp.setContentType("text/html;charset=UTF-8");
            PrintWriter writer = resp.getWriter();
            String script = ""
                    + "<script>"
                    + "alert('" + msg +"');"
                    + "location.href='" + url+"';"
                    + "</script>";
            writer.println(script);
        } catch (Exception e) {
        }
    }

    public static void alertBack(HttpServletResponse resp, String msg){
        try {
            resp.setContentType("text/html;charset=UTF-8");
            PrintWriter writer = resp.getWriter();
            String script = ""
                    + "<script>"
                    + "alert('" + msg +"');"
                    + "history.back();"
                    + "</script>";
            writer.println(script);
        } catch (Exception e) {
        }
    }

}
