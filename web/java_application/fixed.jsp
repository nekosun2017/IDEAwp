<!DOCTYPE html>
<html>

<head>
    <title>会议室详细信息</title>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="css/default.css" />
    <link rel="stylesheet" type="text/css" href="css/component.css" />
    <link rel="stylesheet" href="css/history.css" />
    <link rel="alternate icon" type="img/hengwang-1.png" href="img/hengwang-1.png">
    <link rel="stylesheet" href="css/amazeui.css" />
    <link rel="stylesheet" href="css/style1.css" />
    <link rel="stylesheet" href="css/stander.css" />



    <script src="js/modernizr.custom.js"></script>
</head>

<body style="background: #FCFCFC;">
<div id="title" style="float: left;">
    <div id="userimg" style="margin: 20px;float: left;"> <img style="height: 20px;width: 20px;" src="BG/SW/logo.jpg" />
    </div>
    <div id="username" style="margin-top: 25px;float: left;">nekosun</div>

    <div class=" am-topbar-left am-form-inline am-topbar-right" role="search" style="margin-top: -10px;">
        <ul class="am-nav am-nav-pills am-topbar-nav hw-menu" style="font-family: '楷体';">
            <li>
                <a href="aftersign.html">首页</a>
            </li>
            <li>
                <a href="apply.html">申请会议室</a>
            </li>
            <%--<li>--%>
                <%--<a href="product-show.html">人事管理 </a>--%>
            <%--</li>--%>
            <li>
                <a href="history.jsp">相关审批 </a>
            </li>
            <li class="hw-menu-active">
                <a href="fixed.jsp">固定资产 </a>
            </li>
            <li >
                <a href="stander.jsp">公司标准发布</a>
            </li>
            <li >
                <a href="today.jsp">公告 </a>
            </li>
        </ul>
    </div>
    </head>

    <div style="width: -webkit-fill-available; ">
        <%--<div style="width: 100%;height: 50px;margin-top: 70px">--%>
        <img src="BG/SW/SW224.jpg" style="width: 100%">

        <div style="margin-top: -170px;margin-left: 50px;">
            <p class="fonts" style="font-size: 40px;font-family: 楷体;color: white;">会议室详细信息</p>
            <p class="fonts" style="font-size: 40px;font-family: 楷体;color: white;">Detailed information</p>
        </div>
    </div>

        <%--<figure class="effect-oscar" >--%>
        <%--<img src="BG/SW/SW224.jpg" alt="img08" style="width: 100%;height: auto"/>--%>
        <%--<figcaption >--%>
        <%--<h2>公司标准制度 <span>Oscar</span></h2>--%>
        <%--<p>The company standardized management system.</p>--%>
        <%--<a href="http://yusi123.com/" target="_blank">View more</a>--%>
        <%--</figcaption>--%>
        <%--</figure>--%>





    <%--从这里开始获取数据库内容用jsp显示出来--%>
    <%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@ page import="java.sql.*"%>
    <%!
        public static final String DBDRIVER = "com.mysql.jdbc.Driver" ;
        public static final String DBURL = "jdbc:mysql://localhost:3306/meetingdate?characterEncoding=utf-8&user=root&password=" ;

//        public static final String DBURL = "jdbc:mysql://localhost:3306/meetingdate?user=root&password=" ;
    %>
    <%
        Connection conn = null ;
        PreparedStatement pstmt = null ;
        ResultSet rs = null ;

    %>

    <%
        try{
            Class.forName(DBDRIVER) ;
            conn = DriverManager.getConnection(DBURL) ;

            String sql ="SELECT * FROM fixed";
            pstmt = conn.prepareStatement(sql);
            rs = pstmt.executeQuery();
    %>

    <%
        while(rs.next()){

            String comflag ,airflag,touflag;
            if(Integer.valueOf(rs.getString("G_air"))==0){
                airflag = "X";
            }else{
                airflag = "√";
            }

            if(Integer.valueOf(rs.getString("G_computer"))==0){
                comflag = "X";
            }else{
                comflag = "√";
            }

            if(Integer.valueOf(rs.getString("G_tou"))==0){
                touflag = "X";
            }else{
                touflag = "√";
            }

//            在这里吧查询结果显示在页面上吧！
         String p =   rs.getString("G_pic");

    %>

    <div id="mydiv">

      <div style="float: left;margin: 20px;font-size: 19px">
          <p> 会议室编号：<%=rs.getString("G_roomid")%></p>
          <p> 会议室分机号：<%=rs.getString("G_roomphone")%></p>
          <p>最大容纳人数：<%=rs.getString("G_max")%></p>
          <p>空调：<%=airflag%>
              投影仪：<%=touflag%>
              电脑：<%=comflag%></p>
      </div>

        <div style="width: 50px;height: auto;margin-left: 760px">
            <img style="width: 270px;height: auto;" src="BG\fixed_detial\<%=rs.getString("G_pic")%>.jpg" >
        </div>

        <hr />
        <p>&nbsp;&nbsp;&nbsp;&nbsp;详细：<%=rs.getString("G_detail")%></p>
    </div>

    <%
            }
        }catch(Exception e){
            e.printStackTrace();
        }finally{
            try{
                conn.close() ;  // 连接一关闭，所有的操作都将关闭
            }catch(Exception e){}
        }
    %>
    <%--从这里结束获取数据库内容用jsp显示出来--%>


    <div style="margin-left:50px auto; margin-bottom: 1px;width: 80%;height: auto;background: #ECECEC">
        <ul class="am-nav am-nav-pills am-topbar-nav hw-menu" style="font-family: '楷体';">
            <li>
                <a href="aftersign.html">公司简介</a>
            </li>
            <li>
                <a href="apply.html">招贤纳士</a>
            </li>
            <li>
                <a href="product-show.html">版权声明 </a>
            </li>
            <li>
                <a href="history.html">法律顾问 </a>
            </li>
            <li>
                <a href="news.html">联系电话 </a>
            </li>
            <li >
                <a href="about-us.html">加入我们</a>
            </li>
        </ul>
    </div>

</div>
<body>
</body>

</html>