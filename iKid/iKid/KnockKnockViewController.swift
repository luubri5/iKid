//
//  KnockKnockViewController.swift
//  iKid
//
//  Created by Brian Luu on 2/5/19.
//  Copyright © 2019 Brian Luu. All rights reserved.
//

import UIKit

class KnockKnockViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet var KnockKnockView: UIView!
    @IBOutlet weak var joke: UILabel!
    
    var pageOpen = true
    var pageOpen1 = false
    var pageOpen2 = false
    var pageOpen3 = false
    var pageOpen4 = false
    
    @IBAction func KnockKnockButton(_ sender: UIButton) {
        if pageOpen {
            pageOpen = false
            pageOpen1 = true
            joke.text = "Who's There?"
            UIView.transition(with: KnockKnockView, duration: 0.3, options: .transitionFlipFromLeft, animations: nil, completion: nil)
            
        } else if pageOpen1 {
            pageOpen1 = false
            pageOpen2 = true
            joke.text = "Europe"
            UIView.transition(with: KnockKnockView, duration: 0.3, options: .transitionFlipFromLeft, animations: nil, completion: nil)
        } else if pageOpen2 {
            pageOpen2 = false
            pageOpen3 = true
            joke.text = "Europe who?"
            UIView.transition(with: KnockKnockView, duration: 0.3, options: .transitionFlipFromLeft, animations: nil, completion: nil)
        } else if pageOpen3 {
            pageOpen3 = false
            pageOpen4 = true
            joke.text = "No, you're a poo! 😡"
            sender.setTitle("Back", for: .normal)
            UIView.transition(with: KnockKnockView, duration: 0.3, options: .transitionFlipFromLeft, animations: nil, completion: nil)
        } else if pageOpen4 {
            pageOpen4 = false
            pageOpen = true
            sender.setTitle("Next", for: .normal)
            joke.text = "Knock Knock"
            UIView.transition(with: KnockKnockView, duration: 0.3, options: .transitionFlipFromRight, animations: nil, completion: nil)
        }
    }
}

