//Scut-iOS
//
// Created for: WorkSpace InfoTech on 2/18/19
// Copyright (c) 2019. All Rights Reserved. Kayes-Ekram Production
//
// Using Swift 4.0
// Running on 10.14

import Foundation

class Defaults {
    static var shared = Defaults()
    private init() {}
    
    private let launchedBeforeKey = "launchedBefore"
    private let tokenKey = "token"
    private let userNameKey = "user_name"
    
    func islaunchedBefore()->Bool {
        return UserDefaults.standard.bool(forKey: self.launchedBeforeKey)
    }
    
    func setLaunchedBeforeKey(_ islaunchedBefore:Bool) {
        UserDefaults.standard.set(islaunchedBefore, forKey: self.launchedBeforeKey)
    }
    
    func saveToken(_ token:String) {
        UserDefaults.standard.set(token, forKey: self.tokenKey)
    }
    
    func getToken() -> String {
        return (UserDefaults.standard.value(forKey: self.tokenKey) as? String) ?? ""
    }
    func saveUserName(_ userName: String){
        UserDefaults.standard.set(userName, forKey: self.userNameKey)
    }
    
    func getUserName() -> String {
        return (UserDefaults.standard.value(forKey: self.userNameKey) as? String) ?? ""
    }
    
    func clearUserData() {
        UserDefaults.standard.removeObject(forKey: self.tokenKey)
        UserDefaults.standard.removeObject(forKey: self.userNameKey)
        UserDefaults.standard.removeObject(forKey: self.launchedBeforeKey)
    }
}
