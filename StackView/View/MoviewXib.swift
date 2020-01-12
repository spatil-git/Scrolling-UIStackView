//
//  MoviewXib.swift
//  StackView
//
//  Created by Sanjay Patil on 1/11/20.
//  Copyright © 2020 Sanjay Patil. All rights reserved.
//

import UIKit

class MoviewXib: UIView {

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var review: UILabel!
    @IBOutlet weak var rating: UILabel!
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
        layer.borderWidth = 1
        layer.borderColor = UIColor.gray.cgColor
    }
    
}
