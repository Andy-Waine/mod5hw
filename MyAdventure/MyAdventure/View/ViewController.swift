//
//  ViewController.swift
//  MyAdventure
//
//  Created by user272531 on 2/14/25.
//  ViewController for MyAdventure UI

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    @IBOutlet weak var storyLabel: UILabel!
    
    var storyIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }

    /*
     receives input from UIButtons, calls on AdventureLogic Model to increment
        storyIndex based upon user choice
     */
    @IBAction func choiceMade(_ sender: UIButton) {
        let choice = (sender == choice1Button) ? 1 : 2
        
        // If the current state is an ending, reset to the beginning
        if AdventureLogic.story[storyIndex].isEnding {
            storyIndex = 0
        } else if let nextIndex = AdventureLogic.getNextIndex(currentIndex: storyIndex, choice: choice) {
            storyIndex = nextIndex
        }

        updateUI()
    }

    // updates UI to match change in storyIndex
    func updateUI() {
        let currentAdventure = AdventureLogic.story[storyIndex]
        
        // set text for labels and titles for buttons
        storyLabel.text = currentAdventure.storyText
        choice1Button.setTitle(currentAdventure.choice1, for: .normal)
        choice2Button.setTitle(currentAdventure.choice2, for: .normal)
        
        if currentAdventure.isEnding {
            // Ending: Only show one button with "Play Again" text
            choice1Button.setTitle("Play Again", for: .normal)
            choice1Button.isHidden = false
            choice2Button.isHidden = true
        } else {
            // Not Ending: Show both button options
            choice1Button.isHidden = false
            choice2Button.isHidden = false
        }
    }
}

