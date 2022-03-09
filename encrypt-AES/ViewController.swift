//
//  ViewController.swift
//  encrypt-AES
//
//  Created by Wallace on 09/03/22.
//

import UIKit

class ViewController: UIViewController {
    var iv = "1234567898765432"
    var secret = "1234123456789878"
    var encryptedText = "pL4DRKBLrTiR5c6R8+l4oMHUxvssIek/3nVvsxt4joKPQH/R58kTXOkJlR39LhrJdloUpp525ndUP66RlJjNbM69NIw3qreBI4jLyz0M3VKAiu1kWOUPX2b8gXfewaz6JT1my/g4M+4OASlFhgz/6AI4Nixk1pFDIIibULpSLKipevI1IMjmEi9sRgdLKVSxjME12B4Cx7ItRszWlWCdgYBgSU9fnA65foKfu9h4wx+N9byHHdNJvuSFherc9NnNymUtsPuXRWTda19Q055rZJkeHh0adkehe/6ZSeQRNLo="
    var normalText = "{\"SerializedObject\":\"[{\"UsuarioId\":34961,\"Login\":\"00035331000\",\"SerialToken\":\"BRSC00263966\",\"Autenticacao\":[{\"TipoAutenticacao\":1,\"Ordem\":1,\"Parametro\":1}]}]\",\"ErrorMessage\":[],\"IsResponseOk\":true}"

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func encrypt(_ sender: Any) {
        print("LOG >> [encrypted]: \(normalText.encrypt)")
    }
    
    @IBAction func decrypt(_ sender: Any) {
        print("LOG >> [decrypt]: \(encryptedText.decrypt)")
    }
    
}

