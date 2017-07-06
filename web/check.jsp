<%@ page import="java.sql.*"%>
<%!
    public static final String DBDRIVER = "com.mysql.jdbc.Driver" ;
    public static final String DBURL = "jdbc:mysql://localhost:3306/mydb?user=root&password=" ;
%>
<%
    Connection conn = null ;
    PreparedStatement pstmt = null ;
    ResultSet rs = null ;
    boolean flag = false ;  // 表示登陆成功或失败的标记
%>
<%
    String userid = request.getParameter("userid") ;    // 接收表单参数
    String password = request.getParameter("password") ;    // 接收表单参数
    try{
        Class.forName(DBDRIVER) ;
        conn = DriverManager.getConnection(DBURL) ;
        String sql = "SELECT c_username FROM t_user WHERE c_username="+ userid +" AND c_password="+password ;
        pstmt = conn.prepareStatement(sql) ;
        rs = pstmt.executeQuery() ;
        String temp;

        while(rs.next()){
            // 如果有内容，则此处执行，表示查询出来，合法用户
            temp = rs.getString("c_username");
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
    if(flag){   // 登陆成功，应该跳转到success.jsp
%>
        <jsp:forward page="success.jsp"/>
<%
}else{      // 登陆失败，跳转到failure.jsp
%>
        <jsp:forward page="failure.jsp"/>
<%
    }
%>
