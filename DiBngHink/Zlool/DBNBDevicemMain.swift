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
    
    // 钥匙串服务标识符
    private static let service = Bundle.main.bundleIdentifier ?? "com.trensding.kinki"
    private static let account = "Hinki_id"
    
    /// 获取设备唯一标识符（优先从钥匙串读取，不存在则创建并保存）
    static func getOrCreateDeviceID() -> String {
        // 首先尝试从钥匙串读取
        if let existingID = readDeviceIDFromKeychain() {
            return existingID
        }
        
        // 钥匙串中没有，生成新的ID
        let newDeviceID: String
        if let vendorID = UIDevice.current.identifierForVendor?.uuidString {
            newDeviceID = vendorID
        } else {
            // 如果无法获取vendorID，使用UUID生成随机ID
            newDeviceID = UUID().uuidString
        }
        
        // 保存到钥匙串
        saveDeviceIDToKeychain(deviceID: newDeviceID)
        
        return newDeviceID
    }
    
    /// 从钥匙串读取设备ID
    private static func readDeviceIDFromKeychain() -> String? {
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
              let deviceID = String(data: data, encoding: .utf8) else {
            return nil
        }
        
        return deviceID
    }
    
    /// 保存设备ID到钥匙串
    private static func saveDeviceIDToKeychain(deviceID: String) {
        // 先删除可能存在的旧值
        deleteDeviceIDFromKeychain()
        
        guard let data = deviceID.data(using: .utf8) else { return }
        
        let query: [String: Any] = [
            kSecClass as String: kSecClassGenericPassword,
            kSecAttrService as String: service,
            kSecAttrAccount as String: account,
            kSecValueData as String: data,
            kSecAttrAccessible as String: kSecAttrAccessibleAfterFirstUnlock // 设备解锁后可访问
        ]
        
        SecItemAdd(query as CFDictionary, nil)
    }
    
    /// 从钥匙串删除设备ID（可选方法，用于测试或重置）
    static func deleteDeviceIDFromKeychain() {
        let query: [String: Any] = [
            kSecClass as String: kSecClassGenericPassword,
            kSecAttrService as String: service,
            kSecAttrAccount as String: account
        ]
        
        SecItemDelete(query as CFDictionary)
    }
}

