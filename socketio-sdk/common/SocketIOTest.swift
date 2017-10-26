//
//  SocketIOTest.swift
//  socketio-sdk
//
//  Created by gaobo01 on 2017/9/5.
//  Copyright © 2017年 gaobo01. All rights reserved.
//

import Foundation
import SocketIO
import ReplayKit
class SocketIOTest {
    let timeoutafter = 60 //60s超时
    var socket : SocketIOClient?
    var authParam =  Dictionary<String, Any>()//auth验证参数

    //是否链接成功
    var haveDisconnect: Bool = false
    
    var isConnect : Bool {
        get {
            return socket?.status == .connected
        }
    }
    init() {
        authParam = ["BDUSS": "m1VV3hBbnBzeW5nbDNSaXI1d09INmF0fmdQQllXQ2E2ejJLVDk0WDNVdy1rNXRhQUFBQUFBJCQAAAAAAAAAAAryfBQJoeBaAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEiGLMQAAAICnH1ozfwAAkGxCAAAAAAAxMC4yNDIuMT5Frlk-Ra5ZY", "apptype": "ios"]
        
        // 1.创建socketIO链接
        createClient()
        
        //2.链接
        socket?.connect()
        
        //3.添加事件响应
        addHandlers()
    }
    
    func createClient() {
        let config: SocketIOClientConfiguration = [.log(true), .forceNew(true), .forcePolling(true)]
        socket = SocketIOClient(socketURL: URL(string: "http://10.244.66.22:8590/")!, config: config)
    }
}
