//
//  VerifiedView.swift
//  Scut-iOS
//
//  Created by DDSDev on 2/20/19.
//  Copyright © 2019 DDSDev. All rights reserved.
//

import UIKit

class VerifiedView: UIView {
    
    static func instance() -> VerifiedView {
        let v = UINib.init(nibName: "VerifiedView", bundle: nil).instantiate(withOwner: self, options: nil)[0] as! VerifiedView
        v.setup()
        return v
    }
    
    func setup() {
        
    }
}
