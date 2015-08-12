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
        button.frame = CGRectMake(0, 0, 300, 100)
        button.layer.position = CGPoint(x: self.view.frame.width/2, y:400)
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
