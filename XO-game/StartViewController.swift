//
//  StartViewController.swift
//  XO-game
//
//  Created by Алексей Пеньков on 18.08.2021.
//  Copyright © 2021 plasmon. All rights reserved.
//

import UIKit

class StartViewController: UIViewController {

    @IBOutlet weak var vsPeopleButton: UIButton!
    @IBOutlet weak var vsCompButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        vsPeopleButton.layer.cornerRadius = 10
        vsPeopleButton.layer.borderWidth = 3
        vsPeopleButton.layer.borderColor = UIColor.systemPurple.cgColor
        
        vsCompButton.layer.cornerRadius = 10
        vsCompButton.layer.borderWidth = 3
        vsCompButton.layer.borderColor = UIColor.systemPurple.cgColor
    }
    
    @IBAction func vsPeopleButtonAction(_ sender: Any) {
        
        let gameVC = storyboard?.instantiateViewController(identifier: "gameVC") as! GameViewController
        
        gameVC.playerType = .people
        
        self.present(gameVC, animated: true, completion: nil)
    }
    
   
    @IBAction func vsCompButtonAction(_ sender: Any) {
        let gameVC = storyboard?.instantiateViewController(identifier: "gameVC") as! GameViewController
        
        gameVC.playerType = .computer
        
        self.present(gameVC, animated: true, completion: nil)
    }
    
}


