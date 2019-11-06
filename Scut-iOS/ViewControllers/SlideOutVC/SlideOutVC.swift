//Scut-iOS
//
// Created for: WorkSpace InfoTech on 3/3/19
// Copyright (c) 2019. All Rights Reserved. Kayes-Ekram Production
//
// Using Swift 4.0
// Running on 10.14

import UIKit

class SlideOutVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    let cellIdentifier = "slideCell"
    var tabbarVC: MainTabBarVC?
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellIdentifier)
        tableView.dataSource = self
        tableView.delegate = self
        
        tableView.backgroundColor = UIColor(red: 50/255, green: 48/255, blue: 74/255, alpha: 1.0)
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }

}

extension SlideOutVC : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! SlideOutCell
        // this below solution gave by Natasha The Robot
        let customColorView: UIView = UIView()
        customColorView.backgroundColor = UIColor(red: 60/255, green: 58/255, blue: 84/255, alpha: 1.0)
        
        cell.selectedBackgroundView = customColorView
        
        switch indexPath.row {
        case 0:
            cell.tabBarControllerlabelName.text = "Profile"
            cell.iconImageView.image = UIImage(named: "1")
        case 1:
            cell.tabBarControllerlabelName.text = "Ride History"
            cell.iconImageView.image = UIImage(named: "2")
        case 2:
            cell.tabBarControllerlabelName.text = "Payment"
            cell.iconImageView.image = UIImage(named: "3")
        case 3:
            cell.tabBarControllerlabelName.text = "Settings"
            cell.iconImageView.image = UIImage(named: "4")
        default:
            cell.tabBarControllerlabelName.text = "Help"
            cell.iconImageView.image = UIImage(named: "2")
        }
        
        return cell
    }
    
    
    
}

extension SlideOutVC : UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let Cell = tableView.cellForRow(at: indexPath) as! SlideOutCell
        Cell.indicatorView.backgroundColor = UIColor(red: 41/255, green: 254/255, blue: 89/255, alpha: 1.0)
        
        if let mainVC = self.parent as? ContainerVC {
            mainVC.hideSideMenu()
            for childViewController in mainVC.children {
                if let tabVC = childViewController as? MainTabBarVC {
                    self.tabbarVC = tabVC
                    
                }
            }
        }
        
        guard let tabBarVC = self.tabbarVC else {return}
        tabBarVC.selectedIndex = indexPath.row
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
}
