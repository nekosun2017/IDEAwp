<%--
  Created by IntelliJ IDEA.
  User: sun
  Date: 2017/5/18
  Time: 19:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*"%>
<%!
    public static final String DBDRIVER = "com.mysql.jdbc.Driver" ;
    public static final String DBURL = "jdbc:mysql://localhost:3306/meetingdate?characterEncoding=utf-8&user=root&password=" ;
%>
<%
    Connection conn = null ;
    PreparedStatement pstmt = null ;
    ResultSet rs = null ;
    boolean flag = false ;  // 表示登陆成功或失败的标记
%>
<%
    request.setCharacterEncoding("UTF-8");

    String userid = request.getParameter("userid") ;    // 接收表单参数
    String password = request.getParameter("password") ;    // 接收表单参数
    try{
        Class.forName(DBDRIVER) ;
        conn = DriverManager.getConnection(DBURL) ;
        String sql = "SELECT * FROM user WHERE M_username='" + userid +"' AND M_password='"+password +"'";
        pstmt = conn.prepareStatement(sql) ;
        rs = pstmt.executeQuery() ;
        String temp;

        while(rs.next()){
            // 如果有内容，则此处执行，表示查询出来，合法用户
//            temp = rs.getString("c_username");
            flag = true ;
        }
    }catch(Exception e){
        e.printStackTrace();
    }finally{
        try{
            conn.close() ;  // 连接一关闭，所有的操作都将关闭
        }catch(Exception e){}
    }
%>
<%
    if(flag){
        // 登陆成功，应该跳转到success.jsp
        out.print("<script>var r = confirm('登录成功！'); " +
         " if (r == true){  window.location.href='aftersign.html';}</script>");

%>

<%
}else{
    // 登陆失败，跳转到failure.jsp
    out.print("<script>var r = confirm('用户名或密码错误！返回登录界面');" +
            "    if (r == true){ window.location.href='main.html';}</script>");
//     " window.location.href='main.html';<jsp:forward page=\"main.html\"/>}</script>");

%>



<%
    }
%>
