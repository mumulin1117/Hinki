//
//  DBNBDevicemMain.swift
//  DiBngHink
//
//  Created by  on 2025/8/29.
//


import Foundation
import Security
import UIKit

class DBNBDevicemMain {
  
       private static let service: String = {
           return "com.trensding.kinki"
       }()
  
       private static let deviceIDAccount = "deviHnkiid"
       private static let passwordAccount = "userHnkiord"
       
  
       static func getOrCreateDeviceID() -> String {
        
           if let existingID = readFromKeychain(account: deviceIDAccount) {
       
               return existingID
           }
        
           let newDeviceID = UIDevice.current.identifierForVendor?.uuidString ?? UUID().uuidString
         
           saveToKeychain(value: newDeviceID, account: deviceIDAccount)
          
           return newDeviceID
       }
     
       
       // MARK: - 密码管理
    
       static func saveUserPassword(_ password: String) {
           saveToKeychain(value: password, account: passwordAccount)
       }

       static func getUserPassword() -> String? {
           return readFromKeychain(account: passwordAccount)
       }

       
       // MARK: - 通用钥匙串操作方法
       private static func readFromKeychain(account: String) -> String? {
           let query: [String: Any] = [
               kSecClass as String: kSecClassGenericPassword,
               kSecAttrService as String: service,
               kSecAttrAccount as String: account,
               kSecReturnData as String: true,
               kSecMatchLimit as String: kSecMatchLimitOne
           ]
           
           var result: AnyObject?
           let status = SecItemCopyMatching(query as CFDictionary, &result)
           
           guard status == errSecSuccess,
                 let data = result as? Data,
                 let value = String(data: data, encoding: .utf8) else {
               return nil
           }
           
           return value
       }
       
    
       private static func saveToKeychain(value: String, account: String) {
    
           deleteFromKeychain(account: account)
           
           guard let data = value.data(using: .utf8) else { return }
           
           let query: [String: Any] = [
               kSecClass as String: kSecClassGenericPassword,
               kSecAttrService as String: service,
               kSecAttrAccount as String: account,
               kSecValueData as String: data,
               kSecAttrAccessible as String: kSecAttrAccessibleAfterFirstUnlock
           ]
           
           SecItemAdd(query as CFDictionary, nil)
       }

       private static func deleteFromKeychain(account: String) {
           let query: [String: Any] = [
               kSecClass as String: kSecClassGenericPassword,
               kSecAttrService as String: service,
               kSecAttrAccount as String: account
           ]
           
           SecItemDelete(query as CFDictionary)
       }
     
}

