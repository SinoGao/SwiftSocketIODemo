//
//  SocketIOHandles.swift
//  socketio-sdk
//
//  Created by gaobo01 on 2017/9/6.
//  Copyright © 2017年 gaobo01. All rights reserved.
//

import Foundation
//event类型
@objc
enum MTSocketIOEvent: Int {
    case unknown    =  -1   //
    case chatmessage = 1    // 所有消息经过次回调
    case getOffLineMsgs     //获取离线消息
    case connect            // 外部没有此回调，内部收到该消息后authorize
    case disconnect         // report
    case ready              // android no use
    case error              // report,android  没有做其他逻辑处理
    case connect_error      // why input domain:match to json and report
    case connect_timeout    // 同connect error
    case authorize          // 此标识是唯一登录认证成功
    case autherror          // logout and report
    case authertimeout      // author验证超时
    case regetMsgs          //获取指定编号的信息
    func name() -> String {
        var name = ""
        switch self {
        case .chatmessage:
            name = "chatmessage"
        case .getOffLineMsgs:
            name = "getOffLineMsgs"
        case .connect:
            name = "connect"
        case .disconnect:
            name = "disconnect"
        case .ready:
            name = "ready"
        case .error:
            name = "error"
        case .connect_error:
            name = "connect_error"
        case .connect_timeout:
            name = "connect_timeout"
        case .authorize:
            name = "authorize"
        case .autherror:
            name = "autherror"
        case .authertimeout:
            name = "authertimeout"
        case .regetMsgs:
            name = "regetMsgs"
        default:
            break
        }
        return name
    }
}
