# Socket.IO使用

## Socket.IO简介：

- socket.io 是一个为实时应用提供跨平台实时通信的库。socket.io 旨在使实时应用在每个浏览器和移动设备上成为可能，模糊不同的传输机制之间的差异。

- Socket.IO是一个开源的WebSocket项目，标准Socket.IO支持四种协议WebSocket、htmlfile、xhr-polling、jsonp-polling；

- [Socket.IO](http://socket.io) 底层是 [engine.io](http://engine.io)，这个库实现了跨平台的双向通信;

- Socket.IO swift版代码地址：[Socket.IO-Client-Swift](https://github.com/nuclearace/Socket.IO-Client-Swift),其支持协议为：HTTP long-polling mode和WebSockets mode；

## Socket.IO客户端和服务器交互如下图：

![没有图片](https://raw.githubusercontent.com/SinoGao/SwiftSocketIODemo/master/Doc/v2-361334a3f98fb379672d837d894c19fb_b.png)

其详细流程为：

- EIO发送XHR握手，告诉服务器要开始长轮询,后段返回sid和upgrades字段；
`97:0{"sid":"xxJv1zkrcQ4eK6B3AH_Z","upgrades":["websocket"],"pingInterval":25000,"pingTimeout":60000}2:40
`
- 客户端和服务器通过ping-pong保持连接;
 
[engine.io协议](https://github.com/socketio/engine.io-protocol)

客户端事件：

 标准SOcketIO			| SwiftSocketIO 
--------------------|---------------
connect				| connect   
connecting			|无   
disconnect			| disconnect   
connect_failed		|无   
error					| error   
message				|chatmessage   
reconnect				|无   
reconnecting			| 无   
reconnect_failed		| 无   

创建socketIO的步骤：

1.创建socket链接：

## 参考链接：

- [socket.io 的详细工作流程是怎样的？](https://www.zhihu.com/question/31965911)





