# Socket.IO使用

## Socket.IO简介：

###1.socket.io 是一个为实时应用提供跨平台实时通信的库。socket.io 旨在使实时应用在每个浏览器和移动设备上成为可能，模糊不同的传输机制之间的差异。

###2.Socket.IO是一个开源的WebSocket项目，标准Socket.IO支持四种协议：WebSocket、htmlfile、xhr-polling、jsonp-polling；

###3.Socket.IO swift版代码地址：[Socket.IO-Client-Swift](https://github.com/nuclearace/Socket.IO-Client-Swift),其支持协议为：HTTP long-polling mode和WebSockets mode；



##Socket.IO客户端和服务器交互如下图：

![](/Users/gaobo01/Desktop/work/GitHub/Swift_SocketIO_Test/Doc/v2-361334a3f98fb379672d837d894c19fb_b.png)

其流程为：


客户端事件：

connect, connecting, disconnect, connect_failed, error, message, reconnect, reconnecting, , reconnect_failed

Socket.IO-Client-Swift有的事件：connect, disconnect, error, chatmessage。

创建socketIO的步骤：

1.创建socket链接：





