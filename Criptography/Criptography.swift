//
//  Criptography.swift
//  Criptography
//
//  Created by YAIR on 29/12/15.
//  Copyright © 2015 Yair Hernández. All rights reserved.
//

import Foundation

class criptography {
    
    static let alfabeto: [Character] = ["A", "B", "C", "D", "E",
                                        "F", "G", "H", "I", "J",
                                        "K", "L", "M", "N", "Ñ",
                                        "O", "P", "Q", "R", "S",
                                        "T", "U", "V", "W", "X",
                                        "Y", "Z", " ", "a", "b",
                                        "c", "d", "e", "f", "g",
                                        "h", "i", "j", "k", "l",
                                        "m", "n", "ñ", "o", "p",
                                        "q", "r", "s", "t", "u",
                                        "v", "w", "x", "y", "z",]
    
    static func getTextoClave(clave: [Character], arrayTextoPlano: [Character]) -> [Character] {
        var arrayTextoClave: [Character] = []
        var indexKey = 0
        for _ in arrayTextoPlano {
            arrayTextoClave.append(clave[indexKey])
            indexKey += 1
            if indexKey > clave.count - 1 {
                indexKey = 0
            }
        }
        return arrayTextoClave
    }
    
    
    static func getNuevosIndicesEncriptar(charTextoPlano: Character, charTextoClave: Character) -> Int{
        var indiceTextoClaro = 0
        var indiceTextoClave = 0
        var nuevoIndice = 0
        
        for var i = 0; i < alfabeto.count; i++ {
            if charTextoPlano == alfabeto[i] {
                let char = alfabeto[i]
                indiceTextoClaro = alfabeto.indexOf(char)!
                break
            }
        }
        
        for var i = 0; i < alfabeto.count; i++ {
            if charTextoClave == alfabeto[i] {
                let char = alfabeto[i]
                indiceTextoClave = alfabeto.indexOf(char)!
                break
            }
        }
        
        nuevoIndice = (indiceTextoClaro + indiceTextoClave) % 55
        return nuevoIndice
    }
    
    
    static func getNuevosIndicesDescifrar(charTextoCifrado: Character, charTextoClave: Character) -> Int{
        var indiceTextoClaro = 0
        var indiceTextoClave = 0
        var nuevoIndice = 0
        
        for var i = 0; i < alfabeto.count; i++ {
            if charTextoCifrado == alfabeto[i] {
                let char = alfabeto[i]
                indiceTextoClaro = alfabeto.indexOf(char)!
                break
            }
        }
        
        for var i = 0; i < alfabeto.count; i++ {
            if charTextoClave == alfabeto[i] {
                let char = alfabeto[i]
                indiceTextoClave = alfabeto.indexOf(char)!
                break
            }
        }
        if indiceTextoClaro >= indiceTextoClave {
            nuevoIndice = abs((indiceTextoClaro - indiceTextoClave) % 55)
        } else {
            nuevoIndice = ( 55 - (indiceTextoClave - indiceTextoClaro))
        }
        return nuevoIndice
    }
    
}