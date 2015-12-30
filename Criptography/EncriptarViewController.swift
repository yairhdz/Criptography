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
    
    var textoPlano: String = String()
    var clave: [Character] = [Character]()
    var textoCifrado: [Character] = [Character]()
    var arrayTextoPlano: [Character] = [Character]()
    var arrayTextoClave: [Character] = [Character]()
    
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
        Utility.resignFirsrResponder(self.view)
        self.encryptedText.layer.borderWidth = 1.0
        self.encryptedText.text = self.textToEncrypt.text
        
        self.textoPlano = textToEncrypt.text!
        self.arrayTextoPlano = Array(self.textoPlano.characters)
        let claveString = self.keyToEncrypt.text
        self.clave = Array(claveString!.characters)
        
        self.arrayTextoClave = criptography.getTextoClave(self.clave, arrayTextoPlano: self.arrayTextoPlano)
        
        var arrayNuevosIndices: [Int] = []
        for var i = 0; i < arrayTextoPlano.count; i++ {
            let indice = criptography.getNuevosIndicesEncriptar(arrayTextoPlano[i], charTextoClave: arrayTextoClave[i])
            arrayNuevosIndices.append(indice)
        }
        
        for var i=0; i<arrayNuevosIndices.count; i++ {
            let char = criptography.alfabeto[arrayNuevosIndices[i]]
            self.textoCifrado.append(char)
        }
        
        self.encryptedText.text = String(self.textoCifrado)
        self.textoPlano = ""
        self.clave = []
        self.textoCifrado = []
        self.arrayTextoPlano = []
        self.arrayTextoClave = []
        
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
