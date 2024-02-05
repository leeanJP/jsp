package com.common;

import jakarta.servlet.ServletContext;

import java.sql.*;

public class JDBCConnect {


    public Connection con;
    //데이터이스와 연결을 담당
    public Statement stmt;
    //파라미터가 없는 정적 쿼리문 실행할 때 사용
    public PreparedStatement psmt;
    //파라미터가 있는 동적 쿼리문 실행할 때 사용
    public ResultSet rs;
    //쿼리문 실행결과를 저장할 때 사용


    public JDBCConnect() {
        try {
            //JDBC 드라이버 로드
            Class.forName("oracle.jdbc.OracleDriver");

            //DB 연결
            String url = "jdbc:oracle:thin:@localhost:1521:xe";
            String id  = "system";
            String pwd = "oracle";
            con = DriverManager.getConnection(url,id,pwd);

            System.out.println("DB 연결 성공(기본생성자)");


        }catch (Exception e){
            e.printStackTrace();
        }
    }

    public JDBCConnect(String driver, String url, String id
            , String pwd) {
        try {
            //JDBC 드라이버 로드
            Class.forName(driver);

            //DB 연결
            con = DriverManager.getConnection(url,id,pwd);

            System.out.println("DB 연결 성공(파라미터 생성자)");


        }catch (Exception e){
            e.printStackTrace();
        }
    }

    public JDBCConnect(ServletContext application){
        try {
            //JDBC 드라이버 로드
            String driver =application.getInitParameter("OracleDriver");
            String url =application.getInitParameter("OracleURL");
            String id =application.getInitParameter("OracleId");
            String pwd =application.getInitParameter("OraclePwd");
            Class.forName(driver);

            //DB 연결
            con = DriverManager.getConnection(url,id,pwd);

            System.out.println("DB 연결 성공(파라미터 생성자2)");


        }catch (Exception e){
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

            System.out.println("JDBC 연결 자원 해제");
        }catch (Exception e){
            e.printStackTrace();
        }
    }
}
