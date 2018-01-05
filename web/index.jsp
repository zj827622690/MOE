<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/zui/1.7.0/css/zui.min.css">

  <!-- ZUI Javascript 依赖 jQuery -->
  <script src="http://cdnjs.cloudflare.com/ajax/libs/zui/1.7.0/lib/jquery/jquery.js"></script>
  <!-- ZUI 标准版压缩后的 JavaScript 文件 -->
  <script src="http://cdnjs.cloudflare.com/ajax/libs/zui/1.7.0/js/zui.min.js"></script>

  <meta charset="utf-8" />
  <title></title>
  <!--<style>
      * { margin: 0; padding: 0; }
      .pic{
          position: absolute; left: 10%; top: 30%!important; width: 50%;
      }
      .denglu{
          position: absolute; right: 0%; top: 20%!important; width: 50%;
          margin: 300px 0px 0px 0px;
      }
  </style>-->

</head>
<body style="background-color:#73c1b1">
<script>
    var i=0;
    function fun(j)
    {
        i=1-i;
        if(i==0)
        {
            var p=document.getElementById("passwd");
            p.style.webkitTextSecurity="disc";
            console.log(p.style.webkitTextSecurity);
        }
        if(i==1)
        {
            var p=document.getElementById("passwd");
            p.style.webkitTextSecurity="none";
            console.log(p.style.webkitTextSecurity);
        }

    }
</script>
<br /><br /><br /><br /><br /><br /><br />
<div id="pic" class="col-sm-5 col-sm-offset-1" >
  <img src="img/24bad13a0bb15f6f53a399cc029c7943.png" width="500" height="300" />
</div>
<div id="denglu" class="col-sm-6" >
  <div>
    <h1 style="font-family: helvetica;font-size: 60px;">Sign in</h1>
    <div>
      <h3 style="font-family: tahoma;size: 30px;">email</h3>
      <div class="input-group" style="width: 500px;height: 45px;">
        <span class="input-group-addon"><i class="icon icon-heart"></i></span>
        <input type="text" class="form-control" placeholder="email" style="height: 45px!important;">
        <span class="input-group-addon">@moe.com</span>
      </div>
    </div>
    <div>
      <h3 style="float: left;" style="font-family: tahoma;size: 30px;">password</h3>
      <a href="#"  style="float: left; margin: 20px 0px 20px 320px;" >forgot password?</a>
    </div>
    <div style="clear: both;">
      <div class="input-group" style="width: 500px;height: 45px;">
        <span class="input-group-addon"><i class="icon icon-key"></i></span>
        <input id="passwd" type="text" class="form-control" placeholder="password"style="height: 45px!important;-webkit-text-security: disc;">
      </div>
    </div><br />
    <div>
      <div class="switch" style="float: left;">
        <input type="checkbox">
        <label>remember password</label>
      </div>
      <div class="switch" style="float: left; margin: 0px 0px 0px 20px;" onclick="fun()">
        <input type="checkbox">
        <label>show password</label>
      </div>
    </div>
    <div style="clear: both;"><br />
      <button class="btn btn-danger " type="button" style="width: 150px ;">Sign in</button>
    </div>
    <br />
    <h4>Don't have an account? <a href="Sign_up.html" >sign up</a></h4>
  </div>
</div>
<input type="text" id="test">
</body>

</html>
