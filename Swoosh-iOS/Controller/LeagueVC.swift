//
//  LeagueVC.swift
//  Swoosh-iOS
//
//  Created by Tiara Mahardika on 27/12/18.
//  Copyright © 2018 Tiara Mahardika. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    @IBOutlet weak var NextButton: BorderButton!
    var player: Player!

    override func viewDidLoad() {
        super.viewDidLoad()
        player = Player()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "SkillVCSegue", sender: self)
    }

    @IBAction func onMensTapped(_ sender: Any) {
        //player.desiredLeague = "men"
        //NextButton.isEnabled = true
        
        selectedLeague(leagueType: "men")
    }
    
    @IBAction func onWomenTapped(_ sender: Any) {
        //player.desiredLeague = "women"
        selectedLeague(leagueType: "women")
    }
    
    @IBAction func onCoedTapped(_ sender: Any) {
        //player.desiredLeague = "coed"
        selectedLeague(leagueType: "coed")
    }
    
    func selectedLeague (leagueType: String) {
        player.desiredLeague = leagueType
        NextButton.isEnabled = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let SkillVC = segue.destination as? SkillVC {
            SkillVC.player = player
        }
    }
}
