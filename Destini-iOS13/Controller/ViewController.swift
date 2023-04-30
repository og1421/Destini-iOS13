//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    
    @IBAction func choiseMade(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        
        storyBrain.checkAnswer(userAnswer: userAnswer)
        
        updateUi()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUi()
    }

    func updateUi() {
        storyLabel.text = storyBrain.getStory().title
        choice1Button.setTitle(storyBrain.getStory().choice1, for: .normal)
        choice2Button.setTitle(storyBrain.getStory().choice2, for: .normal)
    }

}

