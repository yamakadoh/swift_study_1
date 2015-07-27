import UIKit

class tab2ViewController: UIViewController {
    
    let navBar:UINavigationBar = UINavigationBar()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.purpleColor()
        
        // ボタンを表示
        let button = UIButton.buttonWithType(UIButtonType.Custom) as! UIButton
        button.setTitle("次ページへ遷移するボタン", forState: UIControlState.Normal)
        button.backgroundColor = UIColor.blueColor()
        button.sizeToFit()
        button.center = CGPointMake(200, 400)
        self.view.addSubview(button)
        
        // ボタンのイベント設定
        button.addTarget(self, action: "didTouch:", forControlEvents: UIControlEvents.TouchUpInside)
        
        // ナビゲーションバーのカスタマイズ
        let myImage = UIImage(named: "minions.png")
        self.navigationController?.navigationBar.setBackgroundImage(myImage, forBarMetrics: .Default)
        self.navigationController?.navigationBar.backgroundColor = UIColor.whiteColor()
        
        println(self.navigationController?.navigationBar.frame)
        
        // 戻るボタンのテキスト（「back」）を非表示にする
        let backButtonItem = UIBarButtonItem(title: "", style: .Plain, target: nil, action: nil)
        navigationItem.backBarButtonItem = backButtonItem
    }
    
    func didTouch(button :UIButton) {
        println("ボタンがタッチされました")
        self.navigationController?.pushViewController(SecondViewController(), animated: true)
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
