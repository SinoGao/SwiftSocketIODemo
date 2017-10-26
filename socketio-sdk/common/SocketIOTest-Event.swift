//
//  SocketIOTest-Event.swift
//  socketio-sdk
//
//  Created by gaobo01 on 2017/9/5.
//  Copyright © 2017年 gaobo01. All rights reserved.
//

import Foundation
import SocketIO
extension SocketIOTest {
    func addHandlers() {
        //状态回调
        socket?.on(MTSocketIOEvent.connect.name()) {data, ack in
            self.OnConnect(data: data, ack: ack)
        }
        
        socket?.on(MTSocketIOEvent.disconnect.name()) {data, ack in
            self.OnDisconnect(data: data, ack: ack)
        }
        
        socket?.on(MTSocketIOEvent.error.name()) {data, ack in
            self.OnError(data: data, ack: ack)
        }
        
        socket?.on(MTSocketIOEvent.ready.name()) {data, ack in
            self.OnReady(data: data, ack: ack)
        }
        
        socket?.on(MTSocketIOEvent.connect_error.name()) {data, ack in
            self.OnConnectError(data: data, ack: ack)
        }
        
        socket?.on(MTSocketIOEvent.connect_timeout.name()) {data, ack in
            self.OnConnectTimeout(data: data, ack: ack)
        }
        
        socket?.on(MTSocketIOEvent.autherror.name()) {data, ack in
            self.OnAutherror(data: data, ack: ack)
        }
        
        //消息回调
        socket?.on(MTSocketIOEvent.chatmessage.name()) {data, ack in
            self.OnChatMessage(data: data, ack: ack)
        }
    }
    
    private func removeAll() {
        socket?.removeAllHandlers()
    }
}

extension SocketIOTest {
    //链接成功
    func OnConnect(data:[Any], ack:SocketAckEmitter) {
        print("GB| OnConnect \(socket?.sid)...")
        //4:进行auth验证
        socket?.emitWithAck(MTSocketIOEvent.authorize.name(), authParam).timingOut(after: timeoutafter, callback: { data in
            //认证失败
            if data.count > 0 {
                //Error
                guard let error = data[0] as? String else {
                    return
                }
                print("GB| socketio authorize fail \(error)")
            }
            
            print("GB| socketio authorize sucess...")
        })
    }
    
    func OnDisconnect(data:[Any], ack:SocketAckEmitter) {
        print("GB| OnDisconnect...")
    }
    
    func OnError(data:[Any], ack:SocketAckEmitter) {
        print("GB| OnError...")
    }
    
    func OnReady(data:[Any], ack:SocketAckEmitter) {
        print("GB| OnReady...")
    }
    
    func OnConnectError(data:[Any], ack:SocketAckEmitter) {
        print("GB| OnConnectError...")
    }
    
    func OnConnectTimeout(data:[Any], ack:SocketAckEmitter) {
        print("GB| OnConnectTimeout...")
    }
    
    func OnAutherror(data:[Any], ack:SocketAckEmitter) {
        print("GB| OnAutherror...")
    }
    
    func OnChatMessage(data:[Any], ack:SocketAckEmitter) {
        print("GB| OnAutherror...")
    }
}
