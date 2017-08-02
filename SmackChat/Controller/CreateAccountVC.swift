//
//  CreateAccountVC.swift
//  SmackChat
//
//  Created by Brian Canela on 7/31/17.
//  Copyright © 2017 CanelaApps. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }


    @IBAction func closePressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
    


}
