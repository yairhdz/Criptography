//
//  DesencriptarViewController.swift
//  
//
//  Created by Yair Hernández on 04/12/15.
//
//

import UIKit

class DesencriptarViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textToDecrypt: UITextField!
    @IBOutlet weak var keyToDecrypt: UITextField!
    @IBOutlet weak var decryptButton: UIButton!
    @IBOutlet weak var decryptedText: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.textToDecrypt.delegate = self
        self.keyToDecrypt.delegate = self
        Utility.addGradientBackGround(self.view)
        Utility.formatButtom(decryptButton, frame: CGRectMake(self.view.frame.width / 2 - 50, self.view.frame.height / 2 - 30, 100, 100), cornerRadius: 50.0)
        
        self.decryptedText.frame = CGRectMake(35, 400, 250, 100)
        self.decryptedText.editable = false
        self.decryptedText.layer.cornerRadius = 8.0
        self.decryptedText.layer.borderColor = UIColor.whiteColor().CGColor
        self.decryptedText.layer.backgroundColor = nil
        self.decryptedText.text = nil
        
        self.textToDecrypt.returnKeyType  = .Done
        self.keyToDecrypt.returnKeyType   = .Done
        self.keyToDecrypt.secureTextEntry = true

    }
    
    @IBAction func decryptAction(sender: UIButton) {
        Utility.resignFirsrResponder(self.view)
        self.decryptedText.layer.borderWidth = 1.0
        self.decryptedText.text = self.textToDecrypt.text
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        Utility.resignFirsrResponder(self.view)
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
