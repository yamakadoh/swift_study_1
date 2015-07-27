//
//  tab3ViewController.swift
//  swift07261916
//
//  Created by mochizuki on 2015/07/26.
//  Copyright (c) 2015年 mochizuki. All rights reserved.
//

import UIKit

class tab3ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.lightGrayColor()
        
        // UIImageViewを作成する.
        let myImageView = UIImageView(frame: CGRectMake(0,0,168,100))
        
        // 表示する画像を設定する.
        let myImage = UIImage(named: "minions.png")
        
        // 画像をUIImageViewに設定する.
        myImageView.image = myImage
        
        // 画像の表示する座標を指定する.
        myImageView.layer.position = CGPoint(x: self.view.bounds.width/2, y: 200.0)
        
        // UIImageViewをViewに追加する.
        self.view.addSubview(myImageView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
