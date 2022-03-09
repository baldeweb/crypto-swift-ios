//
//  StringCripto.swift
//  DayFrameworkUtil
//
//  Created by Wallace Baldenebre on 08/03/22.
//  Copyright © 2022 DEV. All rights reserved.
//

import Foundation
import CryptoSwift
import CommonCrypto

public extension String {
    
    var encrypt: String {
        let keyString = "1234123456789878"
        let ivString = "1234567898765432"
        
        let key: [UInt8] = Array(keyString.utf8) as [UInt8]
        let ivArray: [UInt8] = Array(ivString.utf8) as [UInt8]
        let iv = Array(ivArray[0...15])
        var result = ""
        
        let data = self.data(using: .utf8)!
        let encrypted = try! AES(key: key, blockMode: CBC(iv: iv), padding: .pkcs7).encrypt([UInt8](data))
        let encryptedData = Data(encrypted)
        result = encryptedData.base64EncodedString()
        return result
    }
    
    var decrypt: String {
        let keyString = "1234123456789878"
        let ivString = "1234567898765432"
        
        let key: [UInt8] = Array(keyString.utf8) as [UInt8]
        let ivArray: [UInt8] = Array(ivString.utf8) as [UInt8]
        let iv = Array(ivArray[0...15])
        var result = ""
        
        let data = Data(base64Encoded: self)!
        let decrypted = try! AES(key: key, blockMode: CBC(iv: iv), padding: .pkcs7).decrypt([UInt8](data))
        let decryptedData = Data(decrypted)
        result = String(bytes: decryptedData.bytes, encoding: .utf8) ?? ""
        return result
    }
}
