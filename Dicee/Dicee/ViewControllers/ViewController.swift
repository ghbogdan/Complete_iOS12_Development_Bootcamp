//
//  ViewController.swift
//  Dicee
//
//  Created by Bogdan Gheorghe on 4/19/19.
//  Copyright © 2019 Bogdan Gheorghe. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    /*
     * Variables
     */
    
    let diceFaces = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    var randomDiceLeft : Int = 0
    var randomDiceRight : Int = 0
    
    
    /*
     * Outlets
     */
    
    @IBOutlet weak var ivLeftDice: UIImageView!
    @IBOutlet weak var ivRightDice: UIImageView!
    @IBOutlet weak var btnRoll: UIButton!
    
    
    /*
     * VC State
     */
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        print("ViewController > viewDidLoad")
        
        randomizeDices()
    }
    
    
    /*
     * Outlet Actions
     */
    
    @IBAction func btnRollAction(_ sender: UIButton)
    {
        print("ViewController > btnRollAction")
        
        randomizeDices()
    }
    
    
    /*
     *  motionEnded
     */
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?)
    {
        print("ViewController > motionEnded")
        
        randomizeDices()
    }
    
    
    /*
     * Function that randomizes the dices and updates the UIImageView dice images
     */
    
    func randomizeDices()
    {
        print("ViewController > randomizeDices")
        
        randomDiceLeft = Int.random(in: 0 ... 5)
        randomDiceRight = Int.random(in: 0 ... 5)
        
        ivLeftDice.image = UIImage(named: diceFaces[randomDiceLeft])
        ivRightDice.image = UIImage(named: diceFaces[randomDiceRight])
    }
}

