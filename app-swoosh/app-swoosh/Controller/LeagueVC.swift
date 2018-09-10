//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by Craig Newcomb on 9/9/18.
//  Copyright © 2018 Craig Newcomb. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    
    var player = Player()

    @IBAction func onWomensTapped(_ sender: Any) {
        
        selectLeague(leagueType: "womens")

        
    }
    
    @IBAction func onMensTapped(_ sender: Any) {
        
        selectLeague(leagueType: "mens")


    }
    
    @IBAction func onCoedTapped(_ sender: Any) {
        
        selectLeague(leagueType: "coed")


        
    }
    
    @IBAction func onNextTapped(_ sender: Any) {
        
        performSegue(withIdentifier: "skillVCSegue", sender: self)
        
    }
    
    func selectLeague(leagueType: String) {
        nextBtn.isEnabled = true
        nextBtn.alpha = 1
        nextBtn.layer.borderWidth = 3.0
    }
    
    @IBOutlet weak var nextBtn: BorderButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextBtn.layer.borderWidth = 0
        // Do any additional setup after loading the view.
    }

    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // prepare(for segue: ) is how you pass data between view controllers before the segue occurs
        
        if let skillVC = segue.destination as? SkillVC {
            skillVC.player = player
        }
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
 

}
