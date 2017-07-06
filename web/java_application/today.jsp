<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
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
<body>
<div id="title" style="float: left;">
    <div id="userimg" style="margin: 20px;float: left;"> <img style="height: 20px;width: 20px;" src="BG/SW/logo.jpg" />
    </div>
    <div id="username" style="margin-top: 25px;float: left;">nekosun</div>
    <!--
                <div style="margin-left: 670px;margin-top: -8px;">
                    <ul  style="list-style: none;font-family: '楷体';font-size: 18px;" "id="title_list" >
                    <li style="float: left;"><a href="www.baidu.com" style="text-decoration: none;color: black;">申请会议室</a>&nbsp;|&nbsp;</li>
                    <li style="float: left;"><a href="www.baidu.com" style="text-decoration: none;color: black;">人事管理</a>&nbsp;|&nbsp;</li>
                    <li style="float: left;"><a href="www.baidu.com" style="text-decoration: none;color: black;">相关审批</a>&nbsp;|&nbsp;</li>
                    <li style="float: left;"><a href="www.baidu.com" style="text-decoration: none;color: black;">固定资产</a>&nbsp;|&nbsp;</li>
                    <li style="float: left;"><a href="www.baidu.com" style="text-decoration: none;color: black;">公告</a>&nbsp;|&nbsp;</li>
                    <li style="float: left;"><a href="www.baidu.com" style="text-decoration: none;color: black;">公司标准发布</a>&nbsp;|&nbsp;</li>
                </ul>
                </div>-->


    <div class=" am-topbar-left am-form-inline am-topbar-right" role="search" style="margin-top: -10px;">
        <ul class="am-nav am-nav-pills am-topbar-nav hw-menu" style="font-family: '楷体';">
            <li><a href="aftersign.html">首页</a></li>
            <li><a href="apply.html">申请会议室</a></li>
            <%--<li><a href="product-show.html">人事管理 </a></li>--%>
            <li ><a href="history.jsp">相关审批 </a></li>
            <li> <a href="fixed.jsp">固定资产 </a></li>
            <li><a href="stander.jsp">公司标准发布</a></li>
            <li class="hw-menu-active"><a href="today.jsp">公告 </a></li>
        </ul>
    </div>



</div>




<div style="width: -webkit-fill-available; ">

    <%--<img src="BG/SW/SW224.jpg" style="width: 100%">--%>
        <img src="BG/SW/SW6text.jpg" style="width: 100%">
    <div style="margin-top: -170px;margin-left: 50px;">
        <p class="a" style="font-size: 40px;font-family: 楷体;color: white;">会议申请情况一览</p>
        <p class="a"  style="font-size: 40px;font-family: 楷体;color: white;">The meeting application view</p>
    </div>
</div>

</div>

<!--左边的选择栏目-->
<div >


</div>

<div class="container" style="margin-top: 60px">
    <div class="main" style="">
        <ul class="cbp_tmtimeline">


            <%--从这里开始获取数据库内容用jsp显示出来--%>
            <%@ page contentType="text/html;charset=UTF-8" language="java" %>
            <%@ page import="java.sql.*"%>
            <%@ page import="java.util.Calendar" %>
            <%@ page import="java.text.SimpleDateFormat" %>
            <%@ page contentType="text/html;charset=UTF-8" language="java" %>
            <%!
                public static final String DBDRIVER = "com.mysql.jdbc.Driver" ;
//                public static final String DBURL = "jdbc:mysql://localhost:3306/meetingdate?user=root&password=" ;
                public static final String DBURL = "jdbc:mysql://localhost:3306/meetingdate?characterEncoding=utf-8&user=root&password=" ;

            %>
            <%
                Connection conn = null ;
                PreparedStatement pstmt = null ;
                ResultSet rs = null ;
                boolean flag = false ;  // 表示登陆成功或失败的标记
            %>

            <%

                try{

                    Class.forName(DBDRIVER) ;
                    conn = DriverManager.getConnection(DBURL) ;
                    String sql ="SELECT DISTINCT * FROM fixed,history WHERE H_roomid =  G_roomid   ORDER BY H_floatnumber DESC";
                    pstmt = conn.prepareStatement(sql) ;
                    rs = pstmt.executeQuery() ;
            %>

            <%
                while(rs.next()){

                    String startdate = rs.getString("H_startdate");

                    String startd = startdate.substring(8,10);
                    int startdd = Integer.valueOf(startd);

                    String startm = startdate.substring(5,7);
                    int startmm = Integer.valueOf(startm);

                    //当前时间
                    Calendar c = Calendar.getInstance();
                    int m = c.get(Calendar.MONTH)+1;	//月
                    if(startmm<m) {
                        continue;
                    }
                    else if(startmm==m) {


                    int d = c.get(Calendar.DAY_OF_MONTH);	//日
                    String sign ;
                    if(startdd<d) {
                        continue;
                    }}
//            在这里吧查询结果显示在页面上吧！
            %>


            <li>
                <time class="cbp_tmtime" ><span><%=rs.getString("H_startdate")%></span> <span><%=rs.getString("H_starttime")%></span></time>
                <div class="cbp_tmicon cbp_tmicon-phone"></div>
                <div class="cbp_tmlabel">
                    <h2><%=rs.getString("H_roomid")%></h2>
                    <br />
                    <p id="special1" style="font-size: 19px;font-family: '楷体';">
                        会议流水号：<%=rs.getString("H_floatnumber")%><br />
                        申请人：<%=rs.getString("H_applyname")%><br />
                        申请部门：<%=rs.getString("H_department")%><br />
                        申请人职位：<%=rs.getString("H_position")%><br />
                        会议室情况：<%=rs.getString("G_detail")%><br />
                        会议室分机号：<%=rs.getString("G_roomphone")%><br />

                        <%
                            //用小时数做比较
                            String starttime = rs.getString("H_starttime");
                            starttime = starttime.substring(0,2);
                            int startt = Integer.valueOf(starttime);

                            //当前时间
                            Calendar cs = Calendar.getInstance();
                            int h = cs.get(Calendar.HOUR_OF_DAY);	//日


                            String signt ;
                            if(startt<=h){
                                signt ="是";
                            }
                            else{
                                signt="否";
                            }
                        %>
                        会议是否开始：<%=signt%>
                        <%--这里是在history里查找fixed表里的会议室详情--%>
                        <%-- 只有一个所以用另外的String sql--%>
                        <%--这里是在history里查找fixed表里的会议室详情--%>
                    </p>
                </div>
            </li>
            <%

                    }
                }catch(Exception e){
                    e.printStackTrace();
                }finally{
                    try{
                        conn.close() ;  // 连接一关闭，所有的操作都将关闭
                    }catch(Exception e){

                    }
                }
            %>

            <%--到这里结束--%>

        </ul>
    </div>
</div>




</body>
</html>
