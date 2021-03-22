//
//  ViewController.swift
//  Quiz App iOS
//
//  Created by Ash Oldham on 22/03/2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    let quiz = [
        ["Four + Two is equal to Six", "True"],
        ["Five - Three is greater than One", "True"],
        ["Three + Eight is less than Ten", "False"]
        ]
    
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle
        let actualAnswer = quiz[questionNumber][1]
        
        if userAnswer == actualAnswer {
            print("Correct!")
        } else {
            print("Wrong!")
        }
        
            if questionNumber + 1 < quiz.count {
                questionNumber += 1
                updateUI()
            }
    }
    
    func updateUI() {
        questionLabel.text = quiz[questionNumber][0]
    }
    
}

