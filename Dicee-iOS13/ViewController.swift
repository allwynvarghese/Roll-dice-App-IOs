//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var diceView1: UIImageView!
    
    @IBOutlet weak var diceView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        diceView1.image = UIImage(imageLiteralResourceName: "DiceSix")
        
    }
    
    var diceArray: [String] = ["DiceOne", "DiceTwo","DiceThree", "DiceFour", "DiceFive", "DiceSix"]

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        diceView1.image = UIImage(imageLiteralResourceName: diceArray.randomElement() ?? "DiceOne")
        diceView2.image = UIImage(imageLiteralResourceName: diceArray.randomElement() ?? "DiceOne")
    }
    
}

