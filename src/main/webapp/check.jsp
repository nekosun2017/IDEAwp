<%--
  Created by IntelliJ IDEA.
  User: Maibenben
  Date: 2017/4/25
  Time: 19:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<span style="font-size:18px;">
    <%@ page import="java.sql.*" %>
<%!
    public static final String DBDRIVER = "com.mysql.jdbc.Driver";
    public static final String DBURL = "jdbc:mysql://localhost:3306/mydb?user=root&password=123456";
%>
<%
    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;
    boolean flag = false;  // 表示登陆成功或失败的标记
%>
<%
    String userid = request.getParameter("userid");    // 接收表单参数
    String password = request.getParameter("password");    // 接收表单参数
    try {
        Class.forName(DBDRIVER);
        conn = DriverManager.getConnection(DBURL);
        String sql = "SELECT id,name FROM t_user WHERE c_username=? AND c_password=?";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, userid);
        pstmt.setString(2, password);
        rs = pstmt.executeQuery();
        if (rs.next()) {
            // 如果有内容，则此处执行，表示查询出来，合法用户
            flag = true;
        }
    } catch (Exception e) {
    } finally {
        try {
            conn.close();  // 连接一关闭，所有的操作都将关闭
        } catch (Exception e) {
        }
    }
%>
<%
    if (flag) {   // 登陆成功，应该跳转到success.jsp
%>
        <jsp:forward page="success.jsp"/>
<%
} else {      // 登陆失败，跳转到failure.jsp
%>
        <jsp:forward page="failure.jsp"/>
<%
    }
%></span>

</body>
</html>
