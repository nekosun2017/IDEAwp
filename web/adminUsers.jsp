<%--
  Created by IntelliJ IDEA.
  User: Maibenben
  Date: 2017/4/25
  Time: 19:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>adminUsers</title>
    <link rel="stylesheet" href="css/adminUsers.css">
    <script src="js/jquery-3.0.0.js"></script>
</head>
<body>
<%@ page import="main.java.bean.User" %>
<%@ page import="java.util.List" %>
<div>
    <div>
        <form action="adminUsers" method="post" class="wsk">
            <input type="text" name="username" placeholder="通过用户名查询">
            <input type="hidden" name="action" value="find">
            <input type="submit" value="确定">
        </form>
        <div class="center">
            <div class="nice">id</div>
            <div class="nice">name</div>
            <div class="nice">password</div>
            <div class="nice">information</div>
            <div class="nice">allow</div>
            <div class="nice">edit</div>
            <br/>
            <%
                List<User> users = (List<User>) request.getAttribute("users");
                if (users == null || users.size() < 1) {

                } else {
                    for (User u : users) {
            %>
            <form action="adminUsers.java" method="post">
                <input type="hidden" value="edit" name="action">
                <div class="nice"><input type="text" value="<%=u.getId()%>" readonly name="id"></div>
                <div class="nice"><input type="text" value="<%=u.getName()%>" class="text" readonly name="name"></div>
                <div class="nice"><input type="text" value="<%=u.getPassword()%>" class="text" readonly name="password"></div>
                <div class="nice"><input type="text" value="<%=u.getInformation()%>" class="text" readonly name="information"></div>
                <div class="nice"><input type="text" value="<%=u.getAllow()%>" class="text" readonly name="allow"></div>
                <div class="nice"><input type="button" value="edit" class="edit"></div>
                <div class="nice" style="display: none;"><input type="submit" value="sure" class="sure"></div>

            </form>
            <%
                    }
                }
            %>
        </div>
    </div>

</div>
</body>
<script>
    $(function () {
        $('.edit').click(function () {
//            $(this).parent().siblings().css({'color': 'red'});
            $(this).parent().siblings().children('.text').removeAttr('readonly');
//            $('.text').removeAttr('readonly');
            $(this).parent().next().show();
            $(this).parent().hide();
//            $(this).attr('value', 'GO');
//            $(this).addClass('sure')
//            $(this).attr('type', 'submit');
        });
//        $('.sure').click(function () {
//            $(this).parent().parent().submit;
//        })
    })
</script>
</html>
