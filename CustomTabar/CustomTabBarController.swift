//
//  
//  CustomTabar
//
//
//

import UIKit

class CustomTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupMiddleButton()
        
        // Do any additional setup after loading the view.
    }
    
    
    func setupMiddleButton() {
        let menuButton = UIButton(frame: CGRect(x: 0, y: 0, width: 64, height: 64))
        var menuButtonFrame = menuButton.frame
        menuButtonFrame.origin.y = view.bounds.height - menuButtonFrame.height - 50
                menuButtonFrame.origin.x = view.bounds.width/2 - menuButtonFrame.size.width/2
                menuButton.frame = menuButtonFrame
        menuButton.backgroundColor = UIColor.red
               menuButton.layer.cornerRadius = menuButtonFrame.height/2
               view.addSubview(menuButton)

               menuButton.setImage(UIImage(systemName: "camera.fill"), for: .normal)
               

               view.layoutIfNeeded()
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
