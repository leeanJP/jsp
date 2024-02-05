package com.common;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class DBConnPool {

    public Connection con;
    public Statement stmt;
    public PreparedStatement psmt;
    public ResultSet rs;

    public DBConnPool() {
        try {
            //커넥션풀 얻기
            Context initCtx = new InitialContext();
            //JNDI에서 이름과 실제 객체를 연결해주는 역할
            Context ctx = (Context) initCtx.lookup("java:comp/env");
            //java:comp/env > 현재 웹 애플리케이션의 루트 디렉토리
            DataSource source = (DataSource) ctx.lookup("dbcp_myoracle");

            //커넥션 풀을통해서 Connection 얻기
            con = source.getConnection();

            System.out.println("DB 커넥션풀 연결 성공");

        }catch (Exception e){
            System.out.println("DB 커넥션풀 연결 실패");
            e.printStackTrace();
        }
    }


    //연결 해제(자원 반납)
    public void close(){
        try {
            if(rs!= null) rs.close();
            if(stmt!= null) stmt.close();
            if(psmt != null) psmt.close();
            if(con!= null) con.close();

            System.out.println("커넥션 풀 연결 자원 해제");
        }catch (Exception e){
            e.printStackTrace();
        }
    }
}
