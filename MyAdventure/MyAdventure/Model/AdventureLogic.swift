//
//  AdventureLogic.swift
//  MyAdventure
//
//  Created by user272531 on 2/14/25.
//  A struct that stores the story text and model functions for the game
import Foundation

struct AdventureLogic {
    static let story = [
        // index 0
        Adventure(storyText: "You're leading a wagon train westward to Wyoming. Ahead runs a river. What do you do?",
                  choice1: "Try to ford the river",
                  choice2: "Find another way around",
                  next1: 1,
                  next2: 2,
                  isEnding: false),
        
        // index 1
        Adventure(storyText: "Your wagon gets stuck in the river! You lose supplies. Keep going?",
                  choice1: "Yes, press on",
                  choice2: "No, return home",
                  next1: 2,
                  next2: 6,
                  isEnding: false),
        
        // index 2
        Adventure(storyText: "You found a safe passage! But bandits appear. What now?",
                  choice1: "Fight the bandits",
                  choice2: "Try to negotiate",
                  next1: 3,
                  next2: 4,
                  isEnding: false),
        
        // index 3
        Adventure(storyText: "You fought bravely, but the bandits overwhelmed you. GAME OVER.",
                  choice1: "Start Over",
                  choice2: "",
                  next1: 0,
                  next2: nil,
                  isEnding: true),
        
        // index 4
        Adventure(storyText: "The bandits took some supplies but let you pass. Keep moving?",
                  choice1: "Yes, continue west",
                  choice2: "Turn back",
                  next1: 5,
                  next2: 6,
                  isEnding: false),
        
        // index 5
        Adventure(storyText: "You find an abandoned mine at the edge of a desert. Will you explore it or continue West through the desert?",
                  choice1: "Explore the mine",
                  choice2: "Continue west through the desert",
                  next1: 12,
                  next2: 7,
                  isEnding: false),
        
        // index 6
        Adventure(storyText: "You gave up and returned home. GAME OVER.",
                  choice1: "Start Over",
                  choice2: "",
                  next1: 0,
                  next2: nil,
                  isEnding: true),
        
        // index 7
        Adventure(storyText: "You're crossing a desert. Water is running low. What do you do?",
                  choice1: "Press on and ration supplies",
                  choice2: "Search for an oasis",
                  next1: 8,
                  next2: 9,
                  isEnding: false),

        // index 8
        Adventure(storyText: "You pushed forward and made it through the desert! You're near the final stretch to Wyoming, but perhaps you could use a rest...",
                  choice1: "Rest and settle here",
                  choice2: "Keep going",
                  next1: 11,
                  next2: 10,
                  isEnding: false),

        // index 9
        Adventure(storyText: "You got lost searching for water and never made it to Wyoming. GAME OVER.",
                  choice1: "Start Over",
                  choice2: "",
                  next1: 0,
                  next2: nil,
                  isEnding: true),

        // index 10
        Adventure(storyText: "You reached Wyoming and built a new life. YOU WIN!",
                  choice1: "Start Over",
                  choice2: "",
                  next1: 0,
                  next2: nil,
                  isEnding: true),
        
        // index 11
        Adventure(storyText: "You settled near the desert and struggled to grow crops in the poor soil. Frustrated, your party heads back Eastward. GAME OVER.",
                  choice1: "Start Over",
                  choice2: "",
                  next1: 0,
                  next2: nil,
                  isEnding: true),
        
        // index 12
        Adventure(storyText: "The mine is very dark, but in the distance you hear the shrieking of bats.",
                  choice1: "Head toward the sound of bats",
                  choice2: "Try another way",
                  next1: 14,
                  next2: 13,
                  isEnding: false),
        
        // index 13
        Adventure(storyText: "You become lost in the darkness of the mine. Oxygen grows thin in its depths and you lie down, lightheaded, dreaming of Wyoming in your final moments. GAME OVER",
                  choice1: "Start Over",
                  choice2: "",
                  next1: 0,
                  next2: nil,
                  isEnding: true),
        
        // index 14
        Adventure(storyText: "You follow the sound of bats, leading you to the mouth of a cave. You have discovered a shortcut through the desert.",
                  choice1: "Take the shortcut",
                  choice2: "Head back into the cave",
                  next1: 10,
                  next2: 13,
                  isEnding: false),
    ]
    
    // Function to get the next story index based on user choice
    static func getNextIndex(currentIndex: Int, choice: Int) -> Int? {
        let currentAdventure = story[currentIndex]
        return choice == 1 ? currentAdventure.next1 : currentAdventure.next2
    }
}

