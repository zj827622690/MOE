var websocket = null;
//判断当前浏览器是否支持WebSocket
if ('WebSocket' in window) {
    websocket = new WebSocket("ws://localhost:8080/login");
}
else {
    alert('当前浏览器 Not support websocket')
}

//连接发生错误的回调方法
websocket.onerror = function () {
    setMessageInnerHTML("WebSocket连接发生错误");
};

//连接成功建立的回调方法
websocket.onopen = function () {
    setMessageInnerHTML("WebSocket连接成功");
}

//接收到消息的回调方法
websocket.onmessage = function (event) {
    setMessageInnerHTML(event.data);
}

//连接关闭的回调方法
websocket.onclose = function () {
    setMessageInnerHTML("WebSocket连接关闭");
}

//监听窗口关闭事件，当窗口关闭时，主动去关闭websocket连接，防止连接还没断开就关闭窗口，server端会抛异常。
window.onbeforeunload = function () {
    closeWebSocket();
}

//将消息显示在网页上
function setMessageInnerHTML(innerHTML) {
    document.getElementById('message').innerHTML += innerHTML + '<br/>';
}

//关闭WebSocket连接
function closeWebSocket() {
    websocket.close();
}

//发送消息
function send() {
    var user = document.getElementById('user').value;
    var pass = document.getElementById('passwd').value;

    websocket.send(user);
    websocket.send(pass);
}

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

