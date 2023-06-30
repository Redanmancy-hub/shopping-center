<%@ page import="model.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改密码</title>
</head>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: rgb(245,235,235);
    }

    form {
        max-width: 400px;
        margin: 0 auto;
        padding: 80px;
        border-radius: 5px;
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    }

    h2 {
        margin-top: 0;
        text-align: center;
        color: #333;
    }

    .input {
        margin-bottom: 15px;
    }

    .input span {
        display: block;
        margin-bottom: 5px;
        color: #777;
    }

    .input input[type="password"] {
        width: 100%;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 3px;
    }



    .clearfix {
        clear: both;
    }

    .register-but {
        text-align: center;
    }

    .register-but input[type="submit"] {
        padding: 10px 20px;
        border: 2px solid #F07818;
        cursor: pointer;
        font-size: 16px;
    }

    .register-but input[type="submit"]:hover {
        background: #FFF;
        color: #F07818;
    }
</style>
<script>
    function validateForm(event) {
        event.preventDefault(); // 阻止表单默认提交行为

        var password = document.getElementsByName('password')[0].value;
        var newPassword = document.getElementsByName('newPassword')[0].value;


        if (password === newPassword) {
            alert('新密码与原密码相同，请选择一个不同的密码');
            return;
        }

        // 如果密码验证通过，可以继续进行其他操作，比如提交表单
        event.target.submit();
    }
</script>
<body>
<form action="/user_changepwd" method="post" onsubmit="validateForm(event)">
    <a href="user_center.jsp" style="text-decoration: none">《——</a>
    <h2>修改密码</h2>
    <div class="input">
        <span>原密码</span>
        <input type="password" name="password" placeholder="请输入原密码" value="${user.password}">
    </div>
    <div class="input">
        <span>新密码</span>
        <input type="password" name="newPassword" placeholder="请输入新密码">
    </div>
    <div class="clearfix"> </div>
    <div class="register-but text-center">
        <input type="submit" value="提交">
    </div>
</form>
</body>
</html>
