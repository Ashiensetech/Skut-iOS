//Scut-iOS
//
// Created for: WorkSpace InfoTech on 3/3/19
// Copyright (c) 2019. All Rights Reserved. Kayes-Ekram Production
//
// Using Swift 4.0
// Running on 10.14

import UIKit

class SlideOutCell: UITableViewCell {

    @IBOutlet weak var tabBarControllerlabelName: UILabel!
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var indicatorView: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
