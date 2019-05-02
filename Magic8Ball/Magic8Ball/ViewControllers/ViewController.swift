//
//  ViewController.swift
//  Magic8Ball
//
//  Created by Bogdan Gheorghe on 4/24/19.
//  Copyright © 2019 Bogdan Gheorghe. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    /*
     * Variables
     */
    
    let magicAnswers = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    var magicAnswer : Int = 0
    
    
    /*
     * Outlets
     */
    
    @IBOutlet weak var ivMagicBall: UIImageView!
    @IBOutlet weak var btnAsk: UIButton!

    override func viewDidLoad()
    {
        print("ViewController > viewDidLoad")
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        randomizeAnswer()
    }
    
    @IBAction func btnAskAction(_ sender: UIButton)
    {
        print("ViewController > btnAskAction")
        
        randomizeAnswer()
    }
    
    
    /*
     *  motionEnded
     */
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?)
    {
        print("ViewController > motionEnded")
        
        randomizeAnswer()
    }
    
    
    /*
     * Function that randomizes the answer and updates the UIImageView answer image
     */
    
    
    func randomizeAnswer()
    {
        print("ViewController > randomizeAnswer")
        
        magicAnswer = Int.random(in: 0 ... 4)
        ivMagicBall.image = UIImage(named: magicAnswers[magicAnswer])
    }
}

