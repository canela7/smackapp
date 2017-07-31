//
//  ChannelVC.swift
//  SmackChat
//
//  Created by Brian Canela on 7/30/17.
//  Copyright © 2017 CanelaApps. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60
        
    }

    

}
