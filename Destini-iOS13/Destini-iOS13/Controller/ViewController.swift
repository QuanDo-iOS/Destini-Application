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
    override func viewDidLoad() {
        super.viewDidLoad()
        updateStory()
    }
    
    @IBAction func pressedButton(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        storyBrain.nextStory(userAnswer)
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateStory), userInfo: nil, repeats: false)
    }
    
    @objc func updateStory() -> Void {
        storyLabel.text = storyBrain.story[storyBrain.currentNumberQuestion].title
        choice1Button.setTitle(storyBrain.story[storyBrain.currentNumberQuestion].choice1, for: .normal)
        choice2Button.setTitle(storyBrain.story[storyBrain.currentNumberQuestion].choice2, for: .normal)
    }
}

