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
    }
    
    @IBOutlet weak var nextBtn: BorderButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
