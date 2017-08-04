//
//  CircleImage.swift
//  SmackChat
//
//  Created by Brian Canela on 8/3/17.
//  Copyright © 2017 CanelaApps. All rights reserved.
//

import UIKit

@IBDesignable
class CircleImage: UIImageView {

    override func awakeFromNib() {
        setupView()
    }
    
    func setupView() {
        //perfect circle
        self.layer.cornerRadius = self.frame.width / 2
        self.clipsToBounds = true
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        setupView()
    }
    
    

}
