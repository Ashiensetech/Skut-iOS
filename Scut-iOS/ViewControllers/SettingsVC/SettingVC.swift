//Scut-iOS
//
// Created for: WorkSpace InfoTech on 2/18/19
// Copyright (c) 2019. All Rights Reserved. Kayes-Ekram Production
//
// Using Swift 4.0
// Running on 10.14

import UIKit

class SettingVC: CommonVC {
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var userEmail: UILabel!
    @IBOutlet weak var userPhoneNumber: UILabel!
    
    
    //Setting Static Menue Data
    
    let settingManue = ["Notifications","Settings","Help","Policies","Language"]
    
    @IBOutlet weak var settingtableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.initElems()
        self.initActions()
        self.initTransitions()
    
    }
    
}
