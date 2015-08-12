import UIKit

class CustomNavigationController: UINavigationController, UINavigationControllerDelegate {
    
    // ナビゲーションの画像と戻るボタンを用意
    let customNavigationBar = UIImageView(image: UIImage(named: "json.jpg"))
    var returnBtn: UIButton?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        customNavigationBar.contentMode = UIViewContentMode.ScaleAspectFill
        customNavigationBar.frame = CGRectMake(0, 0, UIScreen.mainScreen().bounds.width, 200)
        customNavigationBar.userInteractionEnabled = true
        self.view.addSubview(customNavigationBar)

        returnBtn = UIButton()
        returnBtn?.addTarget(self, action: "returnScreen:", forControlEvents: UIControlEvents.TouchUpInside)
        returnBtn?.backgroundColor = UIColor.blackColor()
        returnBtn?.setTitle("Back", forState: UIControlState.Normal)
        returnBtn?.frame = CGRectMake(20, 110, 100, 50)
        customNavigationBar.addSubview(returnBtn!)
        
        self.delegate = self
    
    }
    
    func returnScreen(sender:UIButton){
        self.popViewControllerAnimated(true)
    }
    
    func navigationController(navigationController: UINavigationController,
        willShowViewController viewController: UIViewController, animated: Bool) {
            if(self.childViewControllers.count <= 1){
                returnBtn?.alpha = 0
            }else{
                returnBtn?.alpha = 1
            }
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
