<%@ page import="java.sql.*"%>
<%@ page language="Java" contentType="text/html; charset=UTF-8"%>

<%!
    public static final String DBDRIVER = "com.mysql.jdbc.Driver" ;
//    public static final String DBURL = "jdbc:mysql://localhost:3306/meetingdate?user=root&password="
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
    String roomidselect = request.getParameter("roomidselect") ;    // 接收表单参数
    String apply_apartment = request.getParameter("department") ;    // 接收表单参数
    //为啥拿不到部门数据呀草拟吗
    String apply_people = request.getParameter("apply_people") ;    // 接收表单参数
    String startdate = request.getParameter("startdate") ;    // 接收表单参数
    String starttime = request.getParameter("starttime") ;    // 接收表单参数
    String time = request.getParameter("time") ;    // 接收表单参数
    String name = request.getParameter("apply_people") ;    // 接收表单参数

    java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    java.util.Date currentTime = new java.util.Date();//得到当前系统时间
    String applyingtime = formatter.format(currentTime); //将日期时间格式化
    String applyingtime1 = currentTime.toString(); //将Date型日期时间转换成字符串形式
    String applyposition = "";


    try{
        Class.forName(DBDRIVER) ;
        conn = DriverManager.getConnection(DBURL) ;

        String sql = "SELECT M_position FROM user WHERE M_username='" + name +"'";
        pstmt = conn.prepareStatement(sql) ;
        rs = pstmt.executeQuery() ;

        while(rs.next()){
            //这个东西是这个人的职位 所以要在员工信息表里面找到信息
            applyposition=rs.getString("M_position");
        }

        // 写多一条查询语句 从user表中查到数据填充到下面这条插入语句里
//        String sql1 = "INSERT INTO today VALUES ('2014213149','"+roomidselect(从switch选择）+"','（房间号从信息表拿）"+apply_people+"','"+（applyposition（从user选择）写在历史表里不是今天表）+"','"+apply_apartmen（userbiao）t+"','"+startdate+" "+starttime+"','"+time+"','"+applyingtime（从当前时间取）+"')" ;
        String sql1 = "INSERT INTO today VALUES (null,'"+roomidselect+"','"+apply_people+"','"+apply_apartment+"','"+startdate+" ','"+starttime+"','"+time+"','"+applyingtime+"','"+applyposition+"')" ;

        pstmt = conn.prepareStatement(sql1) ;
        pstmt.executeUpdate(sql1);
        flag = true;

        String sql2 = " INSERT INTO history VALUES(null,'"+roomidselect+"','"+apply_people+"','"+apply_apartment+"','"+startdate+" ','"+starttime+"','"+time+"','"+applyposition+"')" ;
        pstmt = conn.prepareStatement(sql2) ;
        pstmt.executeUpdate(sql2);



        out.print("<script>var r = confirm('插入成功');" +
                "    if (r == true){ " +
                " window.location.href='aftersign.html';}</script>");

    }catch(Exception e){
        e.printStackTrace();
        flag = false;
        out.print("<script>var r = confirm('插入失败！');" +
                "    if (r == true){ " +
                " window.location.href='apply.html';}</script>");
    }

    finally{
        try{
            conn.close() ;  // 连接一关闭，所有的操作都将关闭
        }catch(Exception e){}
    }
%>
<script>
//    alert("成功插入数据");
//    window.confirm("成功插入数据");
<%--if (confirm("成功插入数据")){--%>
    <%--<jsp:forward page="aftersign.html"/>--%>
<%--}--%>
//var r = confirm("??????");
//    if (r == true){
//       window.location.href='aftersign.html';
//    }
</script>
