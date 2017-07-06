
<%@ page import="java.sql.*"%>
<%@ page language="Java" contentType="text/html; charset=UTF-8"%>


<%!
    public static final String DBDRIVER = "com.mysql.jdbc.Driver";
    //    public static final String DBURL = "jdbc:mysql://localhost:3306/meetingdate?user=root&password="
    public static final String DBURL = "jdbc:mysql://localhost:3306/mydb?characterEncoding=utf-8&user=root&password=";

%>
<%
    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;
    boolean flag = false;  // 表示登陆成功或失败的标记
%>

<%
    request.setCharacterEncoding("UTF-8");
    String signxuehao = request.getParameter("signxuehao");    // 接收表单参数
    String signpassword = request.getParameter("signpassword");    // 接收表单参数

    try {
        Class.forName(DBDRIVER);
        conn = DriverManager.getConnection(DBURL);

        String sql = "SELECT * FROM t_user WHERE c_number = '"+signxuehao+"' AND c_password = '"+signpassword+"';";
        pstmt = conn.prepareStatement(sql);
        rs = pstmt.executeQuery();

        while (rs.next()) {
            //查询到结果了 跳转到登录后的界面 记得吧用户名也传递过去
            out.print("<script>var r = confirm('登录成功');" +
                    "    if (r == true){ " +
                    " window.location.href='aftersignsquare.jsp';}</script>");


    }
//                                            out.print("<script>var r = confirm('插入成功');" +
//                                                    "    if (r == true){ " +
//                                                    " window.location.href='aftersign.html';}</script>");

} catch (Exception e) {
    e.printStackTrace();
    flag = false;

        out.print("<script>var r = confirm('用户名或密码错误！返回首页……');" +
                "    if (r == true){ " +
                " window.location.href='square.jsp';}</script>");


    } finally {
        try {
            conn.close();  // 连接一关闭，所有的操作都将关闭
        } catch (Exception e) {
        }
    }
%>

<%--<script>--%>
<%--//    这里密码错误不会进到这个ajax 啊 直接就卡顿了啊 草他妹8--%>
<%--$('#loginModal .modal-dialog').addClass('shake');--%>
<%--$('.error').addClass('alert alert-danger').html("用户名/密码不正确！");--%>
<%--$('input[type="password"]').val('');--%>
<%--setTimeout( function(){--%>
<%--$('#loginModal .modal-dialog').removeClass('shake');--%>
<%--}, 1000 );--%>
<%--</script>--%>