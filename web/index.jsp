<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="zh" class="no-js">
<head>
  <title>标题</title>
</head>
<body>
<div>
  Welcome<br/><input id="text" type="text"/>
  <button onclick="send()">发送消息</button>
  <hr/>
  <button onclick="closeWebSocket()">关闭WebSocket连接</button>
  <hr/>
  <div id="message"></div>
</div>
<script src="js/indexjs.js"></script>
</body>
</html>
