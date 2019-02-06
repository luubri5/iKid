//
//  PunViewController.swift
//  iKid
//
//  Created by Brian Luu on 2/5/19.
//  Copyright © 2019 Brian Luu. All rights reserved.
//

import UIKit

class PunViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBOutlet weak var joke: UILabel!
    @IBOutlet var punView: UIView!

    var pageOpen = true
    
    @IBAction func punButton(_ sender: UIButton) {
        if !pageOpen {
            pageOpen = true
            joke.text = "I entered a joke competition once with 10 puns."
            sender.setTitle("Next", for: .normal)
            UIView.transition(with: punView, duration: 0.3, options: .transitionFlipFromLeft, animations: nil, completion: nil)
            
        } else {
            pageOpen = false
            joke.text = "Thought I'd win, but no pun in ten did."
            sender.setTitle("Back", for: .normal)
            UIView.transition(with: punView, duration: 0.3, options: .transitionFlipFromRight, animations: nil, completion: nil)
        }
    }
}
