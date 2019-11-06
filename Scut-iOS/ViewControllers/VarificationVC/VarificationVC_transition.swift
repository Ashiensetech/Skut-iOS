//Scut-iOS
//
// Created for: WorkSpace InfoTech on 2/14/19
// Copyright (c) 2019. All Rights Reserved. Kayes-Ekram Production
//
// Using Swift 4.0
// Running on 10.14

import UIKit

extension VarificationVC {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "gotoInsertVarifiedNumberVC" {
            // Send messages. Dependency Injection
            print("Segue Triggered")
        }
    }
    
}
