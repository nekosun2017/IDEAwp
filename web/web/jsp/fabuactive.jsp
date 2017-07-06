
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

<%--怎么会乱码好奇怪 导一堆东西再说--%>


<h2 style="margin-left: 15%">发布动态<br/> <span style="font-size: 13px;color: darkgray;">和大家分享刚遇到的新鲜事</span></h2>

<form>
<input id="title" type="text" style="margin-left: 15%;width: 20%;font-size: larger;"placeholder="请输入标题">
<div style="width: 100%;height: 15px;background-color: white"></div>
<%--从这里是fuwenb啊--%>
<div id="editor" style="width: 70% ;margin-left: 15%"></div>
<div style="width: 100%;height: 20px;background-color: white"></div>
<span style="width: 10% ;margin-left: 15%;">添加一个标签：<input id="symbol" placeholder="计算机科学" ></span>
</form>

<button class=" btn btn-success" id="send" style="margin-left: 70%">发布</button>
<script type="text/javascript" src="../js/wangEditor.js"></script>
<script type="text/javascript">
    var E = window.wangEditor
    var editor = new E('#editor')
    // 或者    var editor = new E( document.getElementById('#editor') );
    editor.customConfig.uploadImgShowBase64 = true;

    editor.create()

    document.getElementById('send').addEventListener('click', function () {
        // 读取 html
        alert(editor.txt.html())

    }, false)



</script>



<%--点击发布按钮吧动态发布到首页 推给粉丝--%>







</body>

</html>