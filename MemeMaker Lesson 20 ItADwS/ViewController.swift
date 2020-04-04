//
//  ViewController.swift
//  MemeMaker Lesson 20 ItADwS
//
//  Created by Ivan Prybolovetz on 4/4/20.
//  Copyright © 2020 Ivan Prybolovetz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var topCaptionSegmentControl: UISegmentedControl!
    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var mainImageView: UIImageView!
    @IBOutlet weak var bottomLabel: UILabel!
    @IBOutlet weak var bottomSegmentControl: UISegmentedControl!
    
    var topChoices = [CaptionOption]()
    var bottomChoices: [CaptionOption] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureTopSegmentControl()
        configureBottomSegmentControl()
    }
    
    func configureTopSegmentControl() {
        topCaptionSegmentControl.removeAllSegments()
        let option1 = CaptionOption(emoji: "🕶", text: "You know what’s cool?", imageName: "imageName")
        let option2 = CaptionOption(emoji: "💥", text: "You know what makes me mad?", imageName: "imageName")
        let option3 = CaptionOption(emoji: "💕", text: "You know what I love?", imageName: "imageName")
        topChoices = [option1, option2, option3]
        
        for choice in topChoices {
            topCaptionSegmentControl.insertSegment(withTitle: choice.emoji, at: topChoices.count, animated: false)
        }
    }
    
    func configureBottomSegmentControl() {
        bottomSegmentControl.removeAllSegments()
        let option1 = CaptionOption(emoji: "🐱", text: "Cats wearing hats", imageName: "")
        let option2 = CaptionOption(emoji: "🐕", text: "Dogs carrying logs", imageName: "")
        let option3 = CaptionOption(emoji: "🙉", text: "Monkeys being funky", imageName: "")
        bottomChoices = [option1, option2, option3]
        
        for choice in bottomChoices {
            bottomSegmentControl.insertSegment(withTitle: choice.emoji, at: topChoices.count, animated: false)
        }
    }
    
    
    
    @IBAction func topSegmentValueChanged(_ sender: UISegmentedControl) {
        
    }
    @IBAction func bottomSegmentValueChanged(_ sender: UISegmentedControl) {
        
    }
}
