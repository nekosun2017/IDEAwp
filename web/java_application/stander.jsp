<!DOCTYPE html>
<html>

<head>
    <title>公司标准发布</title>
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
            <li>
                <a href="fixed.jsp">固定资产 </a>
            </li>
            <li class="hw-menu-active">
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


                  <img src="BG/SW/SW8text.jpg" style="width: 100%">

                 <div style="margin-top: -170px;margin-left: 50px;">
                 <p class="fonts" style="font-size: 40px;font-family: 楷体;color: white;">公司相关标准</p>
                 <p class="fonts" style="font-size: 40px;font-family: 楷体;color: white;">Corporate standards</p>
                 </div>

        <%--<figure class="effect-oscar" >--%>
            <%--<img src="BG/SW/SW224.jpg" alt="img08" style="width: 100%;height: auto"/>--%>
            <%--<figcaption >--%>
                <%--<h2>公司标准制度 <span>Oscar</span></h2>--%>
                <%--<p>The company standardized management system.</p>--%>
                <%--<a href="http://yusi123.com/" target="_blank">View more</a>--%>
            <%--</figcaption>--%>
        <%--</figure>--%>

    </div>



    <%--从这里开始获取数据库内容用jsp显示出来--%>
    <%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@ page import="java.sql.*"%>
        <%!
    public static final String DBDRIVER = "com.mysql.jdbc.Driver" ;
//    public static final String DBURL = "jdbc:mysql://localhost:3306/meetingdate?user=root&password=" ;
public static final String DBURL = "jdbc:mysql://localhost:3306/meetingdate?characterEncoding=utf-8&user=root&password=" ;

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

        String sql ="SELECT * FROM STANDARD";
        pstmt = conn.prepareStatement(sql) ;
        rs = pstmt.executeQuery() ;


        %>

    <%
        while(rs.next()){

//            在这里吧查询结果显示在页面上吧！
 %>

    <div id="mydiv">
        <p> 发布人：<%=rs.getString("S_name")%></p>
        <p> 发布人职位：<%=rs.getString("S_position")%></p>
        <p>发布时间：<%=rs.getString("S_time")%></p>
        <hr />
        <p> <%=rs.getString("S_detail")%> </p>
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
    <div id="mydiv">
        <p> 发布人：nekosun</p>
        <p> 发布人职位：董事长</p>
        <p>发布时间：2017年5月20日23:25:54</p>
        <hr />
        <p>我可能是个假孙宇（瘫坐  </p>
    </div>

    <div id="mydiv">
        <p> 发布人：nekosun</p>
        <p> 发布人职位：董事长</p>
        <p>发布时间：2017年5月20日23:25:54</p>
        <hr />
        <p> &nbsp; &nbsp; &nbsp; &nbsp;迟到可是要杀头的哟。
        </p>
    </div>

    <div id="mydiv">
        <p> 发布人：nekosun</p>
        <p> 发布人职位：董事长</p>
        <p>发布时间：2017年5月20日23:25:54</p>
        <hr />
        <p> &nbsp; &nbsp; &nbsp; &nbsp;　　1 、公司员工故辞职本应提前三十向直接级提交《辞职申请表》经批准转送事部门审核高级员工、部门经理管理员辞职必须经总裁批准2 、收员工辞职申请报告事部门负责解员工辞职真实原并信息反馈给相关部门 ,保证及进行针性工作改进3 、员工填写《离职手续办理清单》办理工作移交财产清手续 4 、事部门统计辞职员工考勤计算应领取薪金办理社保险变 5 、员工财务部办理相关手续领取薪金6 、事部门《离职手续清单》等相关资料存档备查并进行员工信息资料置换
            　　三、辞退管理 1 、见本手册第章第二节六 . 1 及六2 .
            　　2 、部门辞退员工由直接级向事部门提交《辞职申请表》经审查报总裁批准 3 、事部门提前月通知员工本并向员工发《离职通知书》 4 、员工应离公司前办理工作交接手续财产清手续；员工约定期财务部办理相关手续领取薪金离职补偿金 5、 员工理取闹纠缠领导影响本公司产、工作秩序本公司提请公安部门按照《治安管理处罚条例》关规定处理 6 、事部门辞退员工应及相关资料存档备查并进行员工资料信息置换 1 、维护团体荣誉重视团体利益具体事迹者 2 、研究创造突公司确重贡献者 3 、产技术或管理制度提具体改进案或合理化建议采纳具效者 4 、积极参与公司集体表现优秀者 5 、节约物料、资金或物料利用具效者 6 、遇突变勇于负责处理者 7 、公司名义市级刊物发表文章者 8 、社做贡献并公司赢荣誉者 9 、具其特殊功绩或优良行经部门负责呈报级考核通者</p>
    </div>

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