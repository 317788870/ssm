<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="format-detection" content="telephone=no">
  <meta name="renderer" content="webkit">
  <meta http-equiv="Cache-Control" content="no-siteapp" />
  <link rel="alternate icon" type="image/png" href="../static/assets/i/favicon.png">
  <link rel="stylesheet" href="../static/assets/css/amazeui.min.css"/>
  <script type="text/javascript" src="../static/easyui/jquery.min.js"></script>
  <style>
    .header {
      text-align: center;
    }
    .header h1 {
      font-size: 200%;
      color: #333;
      margin-top: 30px;
    }
    .header p {
      font-size: 14px;
    }
  </style>
</head>
<body>
<div class="header">
  <div class="am-g">
    <h1>Web ide</h1>
    <p>Integrated Development Environment<br/>代码编辑，代码生成，界面设计，调试，编译</p>
  </div>
  <hr />
</div>
<div class="am-g">
  <div class="am-u-lg-6 am-u-md-8 am-u-sm-centered">
    <h3>修改</h3>
    <hr>
    <div id="d"></div>
    <br>
    <br>

    <form method="post" id="form" class="am-form">
      <input type="hidden" name="id" value="${user.id }">
      <label for="userName">账号:</label>
      <input type="text" name="userName" id="userName" value="${user.userName }">
      <br>
      <label for="password">密码:</label>
      <input type="password" name="password" id="password" value="${user.password }">
      <br>
      <label for="age">年龄:</label>
      <input type="text" name="age" id="age" value="${user.age }">
      <br>
      <div class="am-cf">
        <input type="submit" name="" value="登 录" class="am-btn am-btn-primary am-btn-sm am-fl">
        <input type="submit" name="" value="忘记密码 ^_^? " class="am-btn am-btn-default am-btn-sm am-fr">
      </div>
    </form>
    <hr>
  </div>
</div>
<script type="text/javascript">
$(function() {
	$("#form").submit(function(e) {
		e.preventDefault();
		$.post(
			"../user/updateUser",
			$(this).serialize(),
			function(data) {
				if (data.success) {
					$("#d").text(data.msg)
					document.location="toGetAllUsers"
				} else {
					$("#d").text(data.msg)
				}
			},
			"json"
		);
	});
})
</script>
</body>
</html>