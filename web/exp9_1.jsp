<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>用户名验证</title>
</head>
<body>
<script>
    window.onload = function(){
        document.getElementById("user").onblur = vaildateuser;

    }

    $user = ["tom","jake"];
    $data = $_GET['user'];
    if(array_key_exists($data,$users))
        echo 0;
    else
    echo 1;
    function receiveMsg(xhr){
        if(xhr.responseText==1){

        }
        else{

        }
    }


</script>
<div style="background: cornsilk;margin: auto;width: 500px;height: 200px;">
    <div style="padding: 20px;">
        <p style=""id="user"> 姓名：<input type="text" ><txt id="msg"></txt></p>
        <p >性别：<select id="sex" onchange="selective()"><option>男</option><option>女</option></select></p>
        <p>密码：<input type="password"id="psw"></p>
        &nbsp;&nbsp;<button id="signin" type="submit">注册</button>
    </div>
</div>
</body>
</html>
<!--
(2)定义 ValidateUser 函数，进行 Ajax 设置(4 步)
var user = document.getElementById("user").value;
var xhr = new XMLHttpRequest();
xhr.onreadystatechange = function(){receiveMsg(xhr);};
xhr.open("GET", "exp9_1.php?user=" + user, true);
xhr.send();
(3)定义 receiveMsg 函数，从 Ajax 的 xhr 中获取信息，如 php 返回"1"，表示用户名
可以使用；返回"0"，表示用户名已注册.
function receiveMsg(xhr)  {
if (xhr.readyState == 4 && xhr.status == 200) {
if (xhr.responseText == 1) {
//设置提示信息
}
else{
//设置提示信息
}
(4)PHP 文件假设有一数组
$users = ['tom', 'jack', 'admin'];
$data = $_GET['user'];
则如果 if (array_key_exists($data, $uses))
echo 0;
else
echo 1; -->


