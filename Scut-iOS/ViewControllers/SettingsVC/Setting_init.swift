//
//  Setting_init.swift
//  Scut-iOS
//
//  Created by DDSDev on 2/25/19.
//  Copyright © 2019 DDSDev. All rights reserved.
//

import Foundation
import UIKit

extension SettingVC{
   
    
    
    func initElems() {
        self.initView()
    }
    func initActions() {
        
    }
    func initTransitions() {
        
    }
    
    func initView() {
        self.settingtableView.delegate = self
        self.settingtableView.dataSource = self
        profileImageRounder()
    }
    
    //profile image rounded
    
    func profileImageRounder() {
        self.profileImageView.layer.cornerRadius = self.profileImageView.bounds.width / 2
        self.profileImageView.clipsToBounds = true
    }
}

extension SettingVC :UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = settingtableView.dequeueReusableCell(withIdentifier: "SettingCell") as! SettingCell
        cell.menueLabl.text = settingManue[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return settingManue.count
    }
    
    //Warning once only: Detected a case where constraints ambiguously suggest a height of zero for a tableview cell's content view. We're considering the collapse unintentional and using standard height instead. when this warning happens, need to implement this solution: "https://stackoverflow.com/questions/25902288/detected-a-case-where-constraints-ambiguously-suggest-a-height-of-zero"
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44
    }
    
}


