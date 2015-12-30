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
    
//    let alfabeto: [Character] = ["A", "B", "C", "D", "E",
//                                 "F", "G", "H", "I", "J",
//                                 "K", "L", "M", "N", "Ñ",
//                                 "O", "P", "Q", "R", "S",
//                                 "T", "U", "V", "W", "X",
//        "Y", "Z", " ", "a", "b", "c", "d", "e",
//        "f", "g", "h", "i", "j",
//        "k", "l", "m", "n", "ñ",
//        "o", "p", "q", "r", "s",
//        "t", "u", "v", "w", "x",
//        "y", "z",]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        Utility.addGradientBackGround(self.view)
        Utility.formatButtom(self.encriptarButton, frame: CGRectMake(self.view.frame.width / 2 - 50, self.view.frame.height / 2 - 30, 100, 30), cornerRadius: nil)
        Utility.formatButtom(self.desencriptarButton, frame: CGRectMake(self.view.frame.width / 2 - 75, self.view.frame.height / 2 + 30, 150, 30), cornerRadius: nil)
//        test()
    }
    
    
    
    override func viewWillAppear(animated: Bool) {
        self.title = "Criptography"
    }
    
    
    
//    func test() {
////        let texto: String = "paris vaut"
//        let textoPlano: String = "PaRis VaUt"
//        let clave: [Character] = ["L", "O", "U", "P"]
//        var textoCifrado: [Character] = []
//        let arrayTextoPlano: [Character] = Array(textoPlano.characters)
//        var arrayTextoClave: [Character] = []
//        print("EL TEXTO EN ARRAY ES \(arrayTextoPlano)")
//        
//        var indexKey = 0
//        for _ in arrayTextoPlano {
//            arrayTextoClave.append(clave[indexKey])
//            indexKey += 1
//            if indexKey > clave.count - 1 {
//                indexKey = 0
//            }
//        }
//        print("EL TEXTO CLAVE ES \(arrayTextoClave)")
//        
//        var arrayNuevosIndices: [Int] = []
//        for var i=0; i<arrayTextoPlano.count; i++ {
//            let indice = getNuevosIndices(arrayTextoPlano[i], charTextoClave: arrayTextoClave[i])
//            arrayNuevosIndices.append(indice)
//            print(test)
//        }
//        
//        for var i=0; i<arrayNuevosIndices.count; i++ {
//            let char = alfabeto[arrayNuevosIndices[i]]
//            textoCifrado.append(char)
//        }
//        
//        print("EL TEXTO CIFRADO ES \(textoCifrado)")
//        
////        let arrayTextoCrifrado: [Character] = Array(textoCif
//        
//        var arrauNuevosIndicesDecifrado: [Int] = []
//        for var i=0; i < textoCifrado.count; i++ {
//            let indice = getNuevosIndicesDescifrar(textoCifrado[i], charTextoClave: arrayTextoClave[i])
//            arrauNuevosIndicesDecifrado.append(indice)
//            print(indice)
//        }
//        
//        
//        var finalText: [Character] = []
//        for var i = 0; i < arrauNuevosIndicesDecifrado.count; i++ {
//            let char = alfabeto[arrauNuevosIndicesDecifrado[i]]
//            finalText.append(char)
//        }
//    
//        print("EL TEXTO DESCIFRADO ES \(finalText)")
//    }
//    
//    
//    func getNuevosIndices(charTextoPlano: Character, charTextoClave: Character) -> Int{
//        var indiceTextoClaro = 0
//        var indiceTextoClave = 0
//        var nuevoIndice = 0
//        
//        for var i=0; i<alfabeto.count; i++ {
//            if charTextoPlano == alfabeto[i] {
//                let char = alfabeto[i]
//                indiceTextoClaro = alfabeto.indexOf(char)!
//                break
//            }
//        }
//        
//        for var i = 0; i<alfabeto.count; i++ {
//            if charTextoClave == alfabeto[i] {
//                let char = alfabeto[i]
//                indiceTextoClave = alfabeto.indexOf(char)!
//                break
//            }
//        }
//        
//        nuevoIndice = (indiceTextoClaro + indiceTextoClave) % 55
//        return nuevoIndice
//    }
//    
//    
//    func getNuevosIndicesDescifrar(charTextoCifrado: Character, charTextoClave: Character) -> Int{
//        var indiceTextoClaro = 0
//        var indiceTextoClave = 0
//        var nuevoIndice = 0
//        
//        for var i=0; i<alfabeto.count; i++ {
//            if charTextoCifrado == alfabeto[i] {
//                let char = alfabeto[i]
//                indiceTextoClaro = alfabeto.indexOf(char)!
//                break
//            }
//        }
//        
//        for var i = 0; i<alfabeto.count; i++ {
//            if charTextoClave == alfabeto[i] {
//                let char = alfabeto[i]
//                indiceTextoClave = alfabeto.indexOf(char)!
//                break
//            }
//        }
//        if indiceTextoClaro >= indiceTextoClave {
//            nuevoIndice = abs((indiceTextoClaro - indiceTextoClave) % 55)
//        } else {
//            nuevoIndice = ( 55 - (indiceTextoClave - indiceTextoClaro))
//        }
//        return nuevoIndice
//    }

    


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        self.title = ""
    }
}
