<%@ page import="com.sun.xml.internal.bind.v2.model.core.ClassInfo" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="java.util.List" %>

<%--
  Created by IntelliJ IDEA.
  User: sun
  Date: 2017/5/28
  Time: 11:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="css/apply.css" media="screen">
    <title>会议室申请界面</title>
</head>
<script type="text/javascript" src="jQuery-2.2.4.min.js"></script>
<script type="text/javascript" src="xs.js"></script>

<body id="main">
<div id="input">
    <div id="selectleft">
        <!--<p style="margin-top: 30px;"> 公司楼层：
            <select name="" style="width: 155px;height: 26px;">
                <option value="1">1搂</option>
                <option value="2">2搂</option>
                <option value="3">3搂</option>
                <option value="4">4搂</option>
                <option value="5">5搂</option>
                <option value="6">6搂</option>
            </select>
        </p>-->

        <form method="post" action="apply.jsp" onSubmit="return validate(this)">
            <p style="margin-top: 30px;"> 会议室号：

                <select name="roomidselect" style="width: 155px;height: 26px;" id="roomidselect">
                    <option value="1">F01M19</option>
                    <option value="2">F01M18</option>
                    <option value="3">F02M08</option>
                    <option value="4">F02M12</option>
                    <option value="5">F03M01</option>
                    <option value="6">F03M03</option>

                    <%--<%--%>
                        <%--ClassImpl   cli   =   new   ClassImpl();--%>
                        <%--List ls   =   cli.queryAll();--%>
                        <%--Iterator it   =   ls.iterator();--%>
                        <%--while(it.hasNext())--%>
                        <%--{--%>
                            <%--ClassInfo cls   =   (ClassInfo)it.next()   ;--%>
                            <%--String   name   =   cls.getClassName();--%>
                            <%--String id   =   cls.getClassID();--%>
                    <%--%>--%>
                    <%--<option   value= " <%=id%> "> <%=name%> </option>--%>
                    <%--<%--%>
                        <%--}--%>
                    <%--%>--%>

                </select>
            </p>

            <p style="margin-top: 30px;"> 申请部门：
                <input id="apply_apartment" type="text" style="background: cornsilk;border:1px solid #FFDEAD" />
            </p>

            <p style="margin-top: 30px;"> &nbsp;&nbsp;&nbsp;申请人：
                <input id="apply_people" type="text" name="apply_people"/>
            </p>

            <p style="margin-top: 30px;"> 开始时间：
                <input type="date" value="2017-05-12" id="startdate" name="startdate" />
                <input type="time" value="21:48" id="starttime"name="starttime" />
            </p>

            <p style="margin-top: 30px;"> 会议时长：
                <input type="txt" value="" placeholder="分钟" id="time" name="time"/>
            </p>

            <!--上面试一个表单 提交到apply.jsp来为数据库添加数据-->

            <div style="width: 550px;height: 150px;background-color: rgba(255,235,205,0.6); margin-left: 30px;">

                <p style="margin: 30px;">
                <p style="margin-top: 50px;margin-left: 0px;font-size: 15px;padding: 20px;">&nbsp;&nbsp;&nbsp;&nbsp;房间环境系统由房间的灯光（包括白炽灯、日光灯）、 窗帘等设备构成；完成对整个房间环境、气氛的改变，以自动适应当前 的需要；譬如播放DVD时，灯光会自动变暗，窗帘自动关闭。
                    <br /> &nbsp;&nbsp;&nbsp;&nbsp;采用目前世界上档次最高、技术最成熟、功能最齐全，用途最广的美国CRESTRON 中央控制系统，实现多媒体电教室各种电子设备的集中控制。
                </p>
                </p>
            </div>

            <div style="margin-left:480px ;margin-top: 10px;">

                <style type="text/css">
                    * {
                        margin: 0;
                        padding: 0;
                    }
                    a {
                        color: #999;
                        text-decoration: none;
                    }

                    button {
                        list-style: none;
                    }

                    body {
                        background-color: #222222;
                    }

                    .xs_ul {
                        width: 1072px;
                        margin: 40px auto 0;
                        font-size: 0;
                        line-height: 0;
                    }

                    .xs_ul button {
                        display: inline-block;
                        font-size: 20px;
                        line-height: 20px;
                        background: #fff;
                        margin: 20px;
                    }

                    .xs_ul button a {
                        display: block;
                        width: 76px;
                        text-align: center;
                        padding: 15px 30px;
                        border: 1px solid #000;
                    ;
                    }
                </style>

                <button class="xs_li_03" style="width: 76px;height: 30px;"><a href="aftersign.html" id="retuen">返回</a></button>
                <button class="xs_li_03" style="width: 76px;height: 30px;" ><input type="submit" style=" width:50px;height:20px;color: rgba(0,0,0,0);background: rgba(0,0,0,0);border: rgba(0,0,0,0);"><div style="margin-top: -17px">登录</div>
                </button>
            </div>

        </form>
        <script type="text/javascript">
            $(document).ready(function() {

                $(".xs_li_03").xs999(4);
            });
        </script>
    </div>
</div>
</body>

</html>