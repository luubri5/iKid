//
//  DadViewController.swift
//  iKid
//
//  Created by Brian Luu on 2/5/19.
//  Copyright © 2019 Brian Luu. All rights reserved.
//

import UIKit

class DadViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var joke: UILabel!
    @IBOutlet var dadView: UIView!
    
    var pageOpen = true

    @IBAction func dadButton(_ sender: UIButton) {
        if !pageOpen {
            pageOpen = true
            sender.setTitle("Next", for: .normal)
            joke.text = "I don't always tell dad jokes..."
            UIView.transition(with: dadView, duration: 0.3, options: .transitionFlipFromLeft, animations: nil, completion: nil)
        } else {
            pageOpen = false
            joke.text = "But when I do, he laughs."
            sender.setTitle("Back", for: .normal)
            UIView.transition(with: dadView, duration: 0.3, options: .transitionFlipFromRight, animations: nil, completion: nil)
        }
    }
}

