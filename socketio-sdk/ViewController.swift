//
//  ViewController.swift
//  socketio-sdk
//
//  Created by gaobo01 on 2017/9/5.
//  Copyright © 2017年 gaobo01. All rights reserved.
//

import UIKit
import SnapKit
class ViewController: UIViewController {
    var socketTest: SocketIOTest?
    let btn = UIButton(type: .custom)
    func build() {
        view.backgroundColor = UIColor.white
        title = "SocketIO Test"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        build()
        socketTest = SocketIOTest()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        //
    }
}

extension ViewController {
    //UICollectionViewTest
    func gotoCollectionTest() {
        //
        
    }
}
