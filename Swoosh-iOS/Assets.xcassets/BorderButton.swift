//
//  BorderButton.swift
//  Swoosh-iOS
//
//  Created by Tiara Mahardika on 27/12/18.
//  Copyright © 2018 Tiara Mahardika. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
    }

}
