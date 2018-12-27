//
//  LeagueVC.swift
//  Swoosh-iOS
//
//  Created by Tiara Mahardika on 27/12/18.
//  Copyright © 2018 Tiara Mahardika. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "SkillVCSegue", sender: self)
    }

}
