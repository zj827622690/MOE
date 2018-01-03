var websocket = null;
var sql = null;
//判断当前浏览器是否支持WebSocket
if ('WebSocket' in window) {
    websocket = new WebSocket("ws://localhost:8080/websocket");
    sql = new WebSocket("ws://localhost:8080/sql");
}
else {
    alert('当前浏览器 Not support websocket')
}
websocket.onmessage = function (event) {
    var out = document.getElementById("out");
    out.value = event.data;
}
function getname() {
    sql.send("name");
}
sql.onopen = function () {

    alert("sql连接成功");
}