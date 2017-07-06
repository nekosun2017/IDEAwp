<%--
  Created by IntelliJ IDEA.
  User: sun
  Date: 2017/7/4
  Time: 22:13
  To change this template use File | Settings | File Templates.
--%>

<%@ page import="com.sun.xml.internal.bind.v2.model.core.ClassInfo" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<!DOCTYPE html>
<html lang="en">
<html>
<!--
    作者：1078113785@qq.com


    时间：2017-06-28
    描述：这是主界面 广场，可以在这里看到校园里的一切
-->

<head>
    <meta charset="UTF-8">
    <link href="../css/bootstrap.css" rel="stylesheet"/>
    <link href="../css/login-register.css" rel="stylesheet"/>
    <!--<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">-->
    <script src="../js/jquery-3.1.1.min.js" type="text/javascript"></script>
    <script src="../js/bootstrap.js" type="text/javascript"></script>
    <script src="../js/login-register.js" type="text/javascript"></script>

    <title>仲恺虚拟广场</title>
</head>
<style>
    .body {
        height: 3000px;
    }
</style>

<body>

<script src="../js/jquery-3.1.1.min.js"></script>
<script src="../js/bootstrap.js"></script>

<nav class="navbar navbar-default navbar-fixed-top" role="navigation" id="top">
    <div class="container-fluid">

        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#example-navbar-collapse">
                <span class="sr-only">切换导航</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#" style="margin-left: 150px;">仲恺</a>
        </div>
        <div class="collapse navbar-collapse" id="example-navbar-collapse">
            <ul class="nav navbar-nav">

                <li>
                    <div class="input-group" style="width: 400px;padding-right: 14px;margin-top: 5px;">
                        <input type="text" class="form-control input-lg" style="height: 40px;"
                               placeholder="搜索你感兴趣的内容……"/>
                        <span class="input-group-addon btn btn-primary"><span class="glyphicon glyphicon-search"></span></span>
                    </div>
                </li>
                <li class="active">
                    <a href="#"> 首页</a>
                </li>
                <li>
                    <a href="#"> 发现</a>
                </li>
                <li>
                    <a href="#"> 消息</a>
                </li>

                <li class="pull-left dropdown" style="margin-left: 300px;">

                    <a href="../jsp/personal.jsp" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown"
                       data-delay="1000" data-close-others="false"><img style="width: 25px;height: 25px"
                                                                        src="../image/tx/tx.jpeg">&nbsp; Anerchy</a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="../jsp/personal.jsp">我的主页</a>
                        </li>
                        <li>
                            <a href="#">私信</a>
                        </li>
                        <li>
                            <a href="#">设置</a>
                        </li>
                        <li>
                            <a href="#">退出</a>
                        </li>
                    </ul>

                </li>

                <!--未登录-->

                <%--<li>--%>
                <%--<div style="margin-left: 300px;margin-top: 15px;">--%>
                <%--<a data-toggle="modal" href="avascript:void(0)" onclick="openLoginModal();">登录</a>--%>
                <%--&nbsp;/&nbsp;--%>
                <%--<a data-toggle="modal" href="javascript:void(0)" onclick="openRegisterModal();">注册</a>--%>
                <%--</div>--%>
                <%--</li>--%>

                <ul class="dropdown-menu">
                    <li class="active">
                        <a href="#"> 首页</a>
                    </li>
                    <li>
                        <a href="#"> 发现</a>
                    </li>

                    <li>
                        <a href="#"> 消息</a>
                    </li>
                </ul>
            </ul>
        </div>
    </div>

</nav>

<!--占位的 不要让导航栏挡住上面 从这里是页面desu-->
<div style="width: -webkit-fill-available;height: 50px;"></div>

<div class="row" style="float: left;">
    <div class="span4 offset2">

        <div class="alert alert-info" role="alert" style="width: 50%;height:50px;margin-left: 13%;margin-top: 30px;">

            <ul class="list-unstyled" style="-webkit-border-horizontal-spacing: initial;">
                <li style="float: left;">
                    <a href="#">
                        <span class="glyphicon glyphicon-comment"> 提问</span>
                    </a>
                </li>
                <li style="float: left;margin-left: 20px;">
                    <a href="#">

                        <span class="glyphicon glyphicon-check"> 回答</span>
                    </a>
                </li>
                <li style="float: left;margin-left: 20px;">
                    <a href="fabuactive.jsp">
                        <span class="glyphicon glyphicon-eye-open"> 发表动态</span>
                    </a>
                </li>
            </ul>

        </div>

        <div class="" style="margin-left: 13%;">

            按已关注的标签阅读：
            <a href="#"><span class="white badge" style="height: auto;">互联网</span></a>
            <a href="#"><span class="white badge" style="height: auto;">考古</span></a>
            <a href="#"><span class="white badge" style="height: auto;">社交网络</span></a>
            <a href="#"><span class="white badge" style="height: auto;">时间管理</span></a>
            <a href="#"><span class="white badge" style="height: auto;">人工智能</span></a>
            <a href="#"><span class="white badge" style="height: auto;">黑客（hacker）</span></a>
            <br/>
            <a href="#"><span class="white badge" style="height: auto;">信息技术</span></a>
            <a href="#"><span class="white badge" style="height: auto;">数据库</span></a>
            <a href="#"><span class="white badge" style="height: auto;">程序员</span></a>
            <a href="#"><span class="white badge" style="height: auto;">职业发展</span></a>
            <hr style="width: 55%;margin-left: 0px;"/>
            <span class="glyphicon glyphicon-grain"> 最新动态</span>
            <hr style="width: 55%;margin-left: 0px;"/>

        </div>
        <!-- 这是一个话题或者问题用简单的hr分隔开就是了-->
        <!--background:#6CBFEE;-->

        <%--这里就厉害了 要从数据库取东西出来 啊对了忘记头像了。待会弄--%>

        <%@ page contentType="text/html;charset=UTF-8" language="java" %>
        <%@ page import="java.sql.*" %>
        <%!
            public static final String DBDRIVER = "com.mysql.jdbc.Driver";
            //            public static final String DBURL = "jdbc:mysql://localhost:3306/meetingdate?user=root&password=" ;
            public static final String DBURL = "jdbc:mysql://localhost:3306/mydb?characterEncoding=utf-8&user=root&password=";
        %>
        <%
            Connection conn = null;
            PreparedStatement pstmt = null;
            ResultSet rs = null;
            boolean flag = false;  // 表示登陆成功或失败的标记
        %>

        <%

            try {

                Class.forName(DBDRIVER);
                conn = DriverManager.getConnection(DBURL);
                String sql = "SELECT  * FROM UR_active  ORDER BY floatnumber DESC";
                pstmt = conn.prepareStatement(sql);
                rs = pstmt.executeQuery();
                String shai = "";

        %>

        <%
            while (rs.next()) {
//                    String temproomid = rs.getString("H_roomid");
//            在这里吧查询结果显示在页面上吧！
        %>


        <div class="container-fluid" style="margin-left: 13%;width: 52%;height: auto;">

            <div style="float: left;">
                <div style="">
                    <a href="#"><img style="width: 60px;height: 60px;" src="../image/tx/<%=rs.getString("touxiang")%>"/></a>
                    <br/><br/>
                    <a href="#">
                        <div style="background: rgba(0,225,0,0.1);">
                            <div class="glyphicon glyphicon-triangle-top" style="width: 30px;margin-left: 25px;"></div>
                            <div style="width: 30px; height: 30px;margin-left: 15px;"><%=rs.getString("zan")%>
                            </div>
                        </div>
                    </a>
                    <a href="#">
                        <div style="background: rgba(0,225,0,0.1);margin-top: 5px;">
                            <div class="glyphicon glyphicon-triangle-bottom"
                                 style="width: 30px;margin-left: 25px;margin-top: 0px;"></div>
                        </div>
                    </a>
                </div>
                <div></div>
            </div>

            <!--占位的div 是头像和正文中间的一道沟-->
            <div style="float: left;width: 7px;height: 200px;background-color: white;"></div>

            <!--正文部分-->
            <div style="margin-left: 30px;width:600px;">
                <div>来自话题：
                    <a><%=rs.getString("topical")%>
                    </a>

                </div>
                <a href="#">
                    <h4><%=rs.getString("title")%>
                    </h4></a>
                <a href="personal.jsp"><%=rs.getString("user")%>
                </a><span style="font-size: 13px;color: darkgray;">，<%=rs.getString("Introduction")%></span>
            </div>
            <p style="font-size: 13px;color: darkgray;"><%=rs.getString("zan")%>个赞&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;编辑于<%=rs.getString("time")%>
            </p>

            <!--正文部分-->
            <div>&nbsp;&nbsp;&nbsp;&nbsp;

                <!--<a href="#zheng" data-toggle="collapse">点击展开</a>
        <div id="zheng" class="collapse"> 这是详细内容<br />人无完人，每个模型不可能都是完美的，它总会犯一些错误。为了解某个模型在犯什么错误，我们可以观察被模型误判的样本，总结它们的共同特征，我们就可以再训练一个效果更好的模型。这种做法有点像后面Ensemble时提到的Boosting，但是我们是人为地观察错误样本，而Boosting是交给了机器。通过错误分析->发现新特征->训练新模型->错误分析，可以不断地迭代出更好的效果，并且这种方式还可以培养我们对数据的嗅觉。
        </div>-->
                <%=rs.getString("neirong")%>
            </div>

            <!--工具栏目-->

            <div class="container" style="margin-top: 10px;">
                <a href="#"><span class="glyphicon glyphicon-plus"></span>添加关注</a>
                <a href="#" style="margin-left: 4px;"> <span class="glyphicon glyphicon-comment"></span>14条评论</a>
                <a href="#" style="margin-left: 4px;"> <span class="glyphicon glyphicon-heart"></span>感谢</a>
                <a href="#" style="margin-left: 4px;"><span class="glyphicon glyphicon-share"></span>分享</a>
                <a href="#" style="margin-left: 4px;"><span class="glyphicon glyphicon-bookmark"></span>收藏</a>
            </div>
            <hr/>
        </div>


        <%

                }
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                try {
                    conn.close();  // 连接一关闭，所有的操作都将关闭
                } catch (Exception e) {
                }
            }
        %>


    </div>

</div>

<style type="text/css">
    .leftdiv {
        font-size: 16px;
        position: fixed;
        left: 950px;
        top: 70px;
        width: 300px;
        height: 400px;
        /*background: #B2E2FA;*/
        padding: 20px;
        line-height: 1.5;
        letter-spacing: 1.5;
    }
</style>
<div class="leftdiv">
    <a href="#"><span class="glyphicon glyphicon-bookmark"></span><span style="margin-left: 3px;">我的收藏</span></a><br/>
    <a href="#"><span class="glyphicon glyphicon-edit"><span style="margin-left: 3px;">我的动态</span></span>
    </a><br/>
    <a href="#"><span class="glyphicon glyphicon-comment"></span><span style="margin-left: 3px;">我的提问</span></a><br/>

    <hr/>

    <a href="#"><span class="glyphicon glyphicon-share"></span><span style="margin-left: 3px;">我关注的</span></a><br/>
    <%--<a href="#" ><span class="glyphicon glyphicon-gift"></span><span style="margin-left: 3px;">我的粉丝</span></a>--%>
    <a data-toggle="modal" href="avascript:void(0)" onclick="openfansModal();" data-target="#myModal"><span
            class="glyphicon glyphicon-gift"></span><span style="margin-left: 3px;">我的粉丝</span></a>


</div>

<div style="width: -webkit-fill-available;height: 600px;"></div>
<!--<div>
    <span class="glyphicon glyphicon-home"></span>
    <span class="glyphicon glyphicon-home"></span>
    <span class="glyphicon glyphicon-signal"></span>
    <span class="glyphicon glyphicon-cog"></span>
    <span class="glyphicon glyphicon-apple"></span>
    <span class="glyphicon glyphicon-trash"></span>
    <span class="glyphicon glyphicon-play-circle"></span>
    <span class="glyphicon glyphicon-headphones"></span>
    <span class="glyphicon glyphicon-book"></span>
</div>-->

<!--<div id="myCarousel" class="carousel slide" style="width: 500px;height: auto;margin-left: 200px;">-->
<!-- 轮播（Carousel）指标 -->
<!--<ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>-->
<!-- 轮播（Carousel）项目 -->
<!--<div class="carousel-inner">
        <div class="item active">
            <img src="../../java_application/BG/bg1.jpg" alt="First slide">
        </div>
        <div class="item">
            <img src="../../java_application/BG/Sbg1.jpg" alt="Second slide">
        </div>
        <div class="item">
            <img src="../../java_application/BG/bg2.jpg" alt="Third slide">
        </div>
    </div>-->
<!--<a class="carousel-control left" href="#myCarousel" data-slide="prev">&lsaquo;</a>
    <a class="carousel-control right" href="#myCarousel" data-slide="next">&rsaquo;</a>
</div>-->

<!--<div style="width: 400px;height: 300px;margin-top: 100px;">
    <a href="#detial" data-toggle="collapse">点击展开或者关闭</a>
    <div id="detial" class="collapse">
        这里有三点需要注意。第一，添加 data-toggle="collapse" 到您要点击的链接上，用来展开或折叠组件。 第二，添加一个 href 或一个 data-target 属性到父组件，它的值为子组件的 id。 用来创建手风琴式的效果。data-parent 属性的值与主容器 div （保存整个手风琴组件）的 id 属性的值相同。如果您想要创建一个简单的折叠组件，不需要像手风琴那么复杂，就不需要添加这个属性。
    </div>
</div>-->

<%--<div class="well">--%>
<%--<a href="#" id="example_top" class="btn btn-success" rel="popover" data-content="为我的网站创建一个提示框如此简单！"--%>
<%--data-original-title="Bootstrap 弹出框">悬停弹出</a>--%>
<%--</div>--%>

</div>
<script src="http://cdn.static.runoob.com/libs/jquery/2.0.0/jquery.min.js"></script>
<script src="/try/bootstrap/twitter-bootstrap-v2/js/bootstrap-tooltip.js"></script>
<script src="/try/bootstrap/twitter-bootstrap-v2/js/bootstrap-popover.js"></script>
<script>
    $(function () {
        $("#example").popover();
        $("#example_left").popover({placement: 'left'});
        $("#example_top").popover({placement: 'top'});
        $("#example_bottom").popover({placement: 'bottom'});
    });
</script>

<script src="../js/jquery-3.1.1.min.js"></script>
<script src="../js/bootstrap-tooltip.js"></script>
<script src="../js/bootstrap-popover.js"></script>

<script>
    $(function () {
        $("#proexample").popover();
    });
</script>

<%--<span class="glyphicon glyphicon-plus"></span>--%>
<%--<span class="glyphicon glyphicon-comments"></span>--%>
<%--<span class="glyphicon glyphicon-home"></span> 傻缺--%>

<script src="../js/jquery-3.1.1.min.js" type="text/javascript"></script>
<script src="../js/bootstrap.js" type="text/javascript"></script>
<script src="../js/login-register.js" type="text/javascript"></script>

<!--下面是弹出框的代码-->
<div class="container">
    <div class="modal fade login" id="loginModal">
        <div class="modal-dialog login animated">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title">登录仲恺虚拟社区 </h4>
                </div>
                <div class="modal-body">
                    <div class="box">
                        <div class="content">
                            <div class="error"></div>
                            <div class="form loginBox">
                                <form method="post" action="/login" accept-charset="UTF-8">
                                    <input id="signxuehao" class="form-control" type="text" placeholder="学号"
                                           name="email">
                                    <input id="signpassword" class="form-control" type="password" placeholder="密码"
                                           name="password">
                                    <input class="btn btn-default btn-login" type="button" value="登录"
                                           onclick="loginAjax()">
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="box">
                        <div class="content registerBox" style="display:none;">
                            <div class="form">
                                <form method="post" html="{:multipart=>true}" data-remote="true" action="/register"
                                      accept-charset="UTF-8">
                                    <input id="registeremail" class="form-control" type="text" placeholder="邮箱"
                                           name="email">
                                    <input id="registerpassword" class="form-control" type="password" placeholder="登录密码"
                                           name="password">
                                    <input id="registerpassword_confirmation" class="form-control" type="password"
                                           placeholder="确认密码" name="password_confirmation">
                                    <input class="btn btn-default btn-register" type="submit" value="注册" name="commit">
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <div class="forgot login-footer">
								<span>还没有账号？
                                 <a href="javascript: showRegisterForm();">注册</a>
                            ?</span>
                    </div>
                    <div class="forgot register-footer" style="display:none">
                        <span>已经拥有一个账号？</span>
                        <a href="javascript: showLoginForm();">登录</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<%

    try {

        Class.forName(DBDRIVER);
        conn = DriverManager.getConnection(DBURL);
        String sql = "SELECT * FROM UR_fans,t_user WHERE c_number = fans_id";
        pstmt = conn.prepareStatement(sql);
        rs = pstmt.executeQuery();
%>


<%--下面是粉丝弹出框的--%>
<div class="container">
    <div class="modal fade login" id="fansModal">
        <div class="modal-dialog login animated">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title">我的粉丝 </h4>
                </div>
                <div class="modal-body">
                    <div class="box">
                        <div class="content" style="overflow-y: scroll;overflow-x:hidden;">
                            <%--右上角的×--%>
                            <div class="error"></div>
                            <div class="container-fluid">
                                <%
                                    while (rs.next()) {


                                %>
                                <%--姓名 简介 关注按钮--%>
                                <div style="float: left;">
                                    <a href="#"><img style="width: 70px;height:70px;"
                                                     src="../image/tx/<%=rs.getString("c_tx")%>"/></a>
                                </div>
                                <%--<div style="width:3px;width: 70px ;float: left;background-color: white;"></div>--%>
                                <div style="float: left;width: 5px;height:70px;background-color: white;"></div>
                                <div>
                                    <%=rs.getString("c_username")%> <br/>
                                    <span style="font-size: 14px;color: darkgray;width: 30px;overflow: hidden">简介：<%=rs.getString("c_Intro")%></span>
                                    <br/>
                                    <a href="#" class="btn btn-success">+关注</a>
                                </div>
                                <br/>
                                <hr/>
                                <%
                                        }
                                    } catch (Exception e) {
                                        e.printStackTrace();
                                    } finally {
                                        try {
                                            conn.close();  // 连接一关闭，所有的操作都将关闭
                                        } catch (Exception e) {
                                        }
                                    }
                                %>


                            </div>


                        </div>
                    </div>

                </div>

            </div>
        </div>
    </div>
</div>


<!--<div class="container">
    <div class="row-fluid">
        <div class="col-md-4">我是你爸</div>
        <div class="col-md-8 ">我是你妈</div>
    </div>
</div>-->

<%--<a href="#top" class="back-to-top"> <span class=" glyphicon glyphicon-arrow-up"></span> </a>--%>

<p class="bottom">
    Complete By Nekosun,Copyright © 1996 - 2017 SUN Corporation, All Rights Reserved
</p>

</body>

</html>