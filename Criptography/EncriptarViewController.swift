//
//  EncriptarViewController.swift
//  
//
//  Created by Yair Hernández on 04/12/15.
//
//

import UIKit

class EncriptarViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textToEncrypt: UITextField!
    @IBOutlet weak var keyToEncrypt: UITextField!
    @IBOutlet weak var encryptButton: UIButton!
    @IBOutlet weak var encryptedText: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.textToEncrypt.delegate = self
        self.keyToEncrypt.delegate = self
        
        Utility.addGradientBackGround(self.view)
        Utility.formatButtom(encryptButton, frame: CGRectMake(self.view.frame.width / 2 - 50, self.view.frame.height / 2 - 30, 100, 100), cornerRadius: 50.0)
        
        self.encryptedText.frame = CGRectMake(35, 400, 250, 100)
        self.encryptedText.editable = false
        self.encryptedText.layer.cornerRadius = 8.0
        self.encryptedText.layer.borderColor = UIColor.whiteColor().CGColor
        self.encryptedText.layer.backgroundColor = nil
        self.encryptedText.text = nil
        
        self.textToEncrypt.returnKeyType  = .Done
        self.keyToEncrypt.returnKeyType   = .Done
        self.keyToEncrypt.secureTextEntry = true
    }
    
    @IBAction func encryptAction(sender: UIButton) {
        self.encryptedText.layer.borderWidth = 1.0
        self.encryptedText.text = self.textToEncrypt.text
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.textToEncrypt.resignFirstResponder()
        self.keyToEncrypt.resignFirstResponder()
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
