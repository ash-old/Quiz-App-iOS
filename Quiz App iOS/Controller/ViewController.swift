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
    
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        let userGotItRight = quizBrain.checkAnswer(userAnswer)
        
        if userGotItRight {
            sender.backgroundColor = UIColor.green
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                sender.alpha = 1.0
                sender.backgroundColor = UIColor.clear
            }
        } else {
            sender.backgroundColor = UIColor.red
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                sender.alpha = 1.0
                sender.backgroundColor = UIColor.clear
            }
        }
        
        quizBrain.nextQuestion()
        
        updateUI()
    }
    
    func updateUI() {
//        questionLabel.text = quiz[questionNumber].text
        questionLabel.text = quizBrain.getQuestionText()
//        progressBar.progress = Float(questionNumber + 1) / Float(quiz.count)
        progressBar.progress = quizBrain.getProgress()
    }
    
}

