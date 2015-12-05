//
//  EncriptarViewController.swift
//  
//
//  Created by Yair Hernández on 04/12/15.
//
//

import UIKit

class EncriptarViewController: UIViewController {

    @IBOutlet weak var textToEncript: UITextField!
    @IBOutlet weak var keyToEncript: UITextField!
    @IBOutlet weak var encriptarButton: UIButton!
    @IBOutlet weak var encriptedText: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        Utility.addGradientBackGround(self.view)
        Utility.formatButtom(encriptarButton, frame: CGRectMake(self.view.frame.width / 2 - 50, self.view.frame.height / 2 - 30, 100, 100), cornerRadius: 50.0)
        self.encriptedText.frame = CGRectMake(35, 400, 250, 100)
        self.encriptedText.editable = false
        self.encriptedText.layer.borderWidth = 1.0
        self.encriptedText.layer.cornerRadius = 8.0
        self.encriptedText.layer.borderColor = UIColor.whiteColor().CGColor
        self.encriptedText.layer.backgroundColor = nil
        self.encriptedText.text = nil
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
