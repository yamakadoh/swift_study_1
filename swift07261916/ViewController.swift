//
//  ViewController.swift
//  swift07261916
//
//  Created by mochizuki on 2015/07/26.
//  Copyright (c) 2015年 mochizuki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.whiteColor()
        
        // ラベルを表示
        let label = UILabel()
        label.textColor = UIColor.redColor()
        label.text = "mochizuki"
        label.sizeToFit()
        label.center = CGPointMake(100, 100)
        self.view.addSubview(label)
        
        // ボタンを表示
        let button = UIButton.buttonWithType(UIButtonType.Custom) as! UIButton
        button.setTitle("次ページへ遷移するボタン", forState: UIControlState.Normal)
        button.backgroundColor = UIColor.blueColor()
        button.sizeToFit()
        button.center = CGPointMake(200, 200)
        self.view.addSubview(button)
        
        // ボタンのイベント設定
        button.addTarget(self, action: "didTouch:", forControlEvents: UIControlEvents.TouchUpInside)
        
    }
    
    func didTouch(button :UIButton) {
        println("ボタンがタッチされました")
        self.navigationController?.pushViewController(SecondViewController(), animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

