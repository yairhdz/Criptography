//
//  MainViewController.swift
//  
//
//  Created by Yair Hernández on 04/12/15.
//
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var encriptarButton: UIButton!
    @IBOutlet weak var desencriptarButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        Utility.addGradientBackGround(self.view)
        Utility.formatButtom(self.encriptarButton, frame: CGRectMake(self.view.frame.width / 2 - 50, self.view.frame.height / 2 - 30, 100, 30), cornerRadius: nil)
        Utility.formatButtom(self.desencriptarButton, frame: CGRectMake(self.view.frame.width / 2 - 75, self.view.frame.height / 2 + 30, 150, 30), cornerRadius: nil)
    }
    
    override func viewWillAppear(animated: Bool) {
        self.title = "Criptography"
    }


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        self.title = ""
    }
}
