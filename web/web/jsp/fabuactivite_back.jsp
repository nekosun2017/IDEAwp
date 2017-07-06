<%--
  Created by IntelliJ IDEA.
  User: sun
  Date: 2017/6/1
  Time: 14:19
  To change this template use File | Settings | File Templates.
--%>

<%@ page import="java.sql.*"%>
<%@ page language="Java" contentType="text/html; charset=UTF-8"%>

<%!
    public static final String DBDRIVER = "com.mysql.jdbc.Driver" ;
    //    public static final String DBURL = "jdbc:mysql://localhost:3306/meetingdate?user=root&password="
    public static final String DBURL = "jdbc:mysql://localhost:3306/mydb?characterEncoding=utf-8&user=root&password=" ;

%>


<%
    Connection conn = null ;
    PreparedStatement pstmt = null ;
    ResultSet rs = null ;

    String detial = request.getParameter("value");
    try {
        Class.forName(DBDRIVER);
        conn = DriverManager.getConnection(DBURL);

        String sql = detial;
        pstmt = conn.prepareStatement(sql);
        rs = pstmt.executeQuery();

    }catch (Exception r){

    }
%>

