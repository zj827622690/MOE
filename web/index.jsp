<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/zui/1.7.0/css/zui.min.css">

  <script src="http://cdnjs.cloudflare.com/ajax/libs/zui/1.7.0/lib/jquery/jquery.js"></script>
  <script src="http://cdnjs.cloudflare.com/ajax/libs/zui/1.7.0/js/zui.min.js"></script>
  <script src="js/indexjs.js"></script>
  <meta charset="utf-8" />
  <title>Login</title>

</head>
<body style="background-color:#73c1b1">
<br /><br /><br /><br /><br /><br /><br />
<div id="pic" class="col-sm-5 col-sm-offset-1" >
  <img src="img/24bad13a0bb15f6f53a399cc029c7943.png" width="500" height="300" />
</div>
<div id="denglu" class="col-sm-6" >
  <div>
    <h1 style="font-family: helvetica;font-size: 60px;">login</h1>
    <div>
      <h3 style="font-family: tahoma;size: 30px;">Username</h3>
      <div class="input-group" style="width: 500px;height: 45px;">
        <span class="input-group-addon"><i class="icon icon-heart"></i></span>
        <input id="user" type="text" class="form-control" placeholder="用户名" style="height: 45px!important;">
        <span class="input-group-addon">@moe.com</span>
      </div>
    </div>
    <div>
      <h3 style="float: left;" style="font-family: tahoma;size: 30px;">password</h3>
      <a href="#"  style="float: left; margin: 20px 0px 20px 320px;" >forgot password</a>
    </div>
    <div style="clear: both;">
      <div class="input-group" style="width: 500px;height: 45px;">
        <span class="input-group-addon"><i class="icon icon-key"></i></span>
        <input id="passwd" type="text" class="form-control" placeholder="密码"style="height: 45px!important;-webkit-text-security: disc;">
      </div>
    </div><br />
    <div>
      <div class="switch" style="float: left;">
        <input type="checkbox">
        <label>记住密码</label>
      </div>
      <div class="switch" style="float: left; margin: 0px 0px 0px 50px;" onclick="fun()">
        <input type="checkbox">
        <label>显示密码</label>
      </div>
    </div>
    <div style="clear: both;"><br />
      <button class="btn btn-danger " type="button" style="width: 150px ;" onclick="send()" >login</button>
    </div>
    <h4>Don't have an account? <a href="#" >sign up</a></h4>
  </div>
</div>
<input type="text" id="test">
</body>
<footer>

</footer>
</html>
