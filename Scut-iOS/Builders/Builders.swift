//Scut-iOS
//
// Created for: WorkSpace InfoTech on 2/18/19
// Copyright (c) 2019. All Rights Reserved. Kayes-Ekram Production
//
// Using Swift 4.0
// Running on 10.14

import Foundation
import UIKit

class Builders {
    
    //MARK:Button Builder Function
    
    static func createButton(backgroundColor:UIColor?,btnTitle:String,btnFrame:CGRect,buttonImage:UIImage?)->UIButton {
        let button = UIButton(frame: btnFrame)
        button.backgroundColor = .black
        button.titleLabel?.text = btnTitle
        if let image = buttonImage {
          button.setImage(image, for: .normal)
        }
        button.backgroundColor = backgroundColor
        return button
    }
    
    //MARK: Label Builder Function
    
    static func createLabel(title:String,textAlignment:NSTextAlignment?,frame:CGRect,fontSize:CGFloat?) -> UILabel {
        let label = UILabel(frame: frame)
        label.text = title
        label.textAlignment = textAlignment ?? .center
        if let fontSize = fontSize {
            label.font = UIFont.systemFont(ofSize: fontSize)
        }
        return label
    }
}



