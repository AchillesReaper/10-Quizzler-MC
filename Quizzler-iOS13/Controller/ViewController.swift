//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tfQuestionNumber: UILabel!
    @IBOutlet weak var tfScore: UILabel!
    @IBOutlet weak var pbQuiz: UIProgressView!
    @IBOutlet weak var tfCurrentQuestion: UILabel!

    
    var quiz = QuizBrain()
    var acmScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func keyPressed(_ sender: UIButton) {
        if quiz.isAnswerCorrect(sender.currentTitle!) {
            sender.backgroundColor = UIColor.systemGreen
            acmScore += 1
        } else {
            sender.backgroundColor = UIColor.systemRed
        }
        DispatchQueue.main.asyncAfter(deadline: .now()+0.3){
            sender.backgroundColor = UIColor.clear
        }
        quiz.questionNumberTracking()
        updateUI()
        
        // the score from the perious round will be shown on question 1 next round
        if quiz.currentQuestionNumber == 0 {
            acmScore = 0
        }
        
        
        
        
    }
    
    
    func updateUI(){
        tfQuestionNumber.text = "Question \(quiz.currentQuestionNumber+1)"
        tfScore.text = "Score: \(acmScore)"
        tfCurrentQuestion.text = quiz.currentQuestion()
        pbQuiz.progress = quiz.quizProgress()
    }
}

