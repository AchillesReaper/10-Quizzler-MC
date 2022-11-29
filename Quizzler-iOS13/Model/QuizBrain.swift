//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Donald Ho on 29/11/2022.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain{
    var currentQuestionNumber = 0
    
    let questionBank = [Question(q: "Which is the largest organ in the human body?", a: ["Heart", "Skin", "Large Intestine"], correctAnswer: "Skin"),
                        Question(q: "Five dollars is worth how many nickels?", a: ["25", "50", "100"], correctAnswer: "100"),
                        Question(q: "What do the letters in the GMT time zone stand for?", a: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], correctAnswer: "Greenwich Mean Time"),
                        Question(q: "What is the French word for 'hat'?", a: ["Chapeau", "Écharpe", "Bonnet"], correctAnswer: "Chapeau"),
                        Question(q: "In past times, what would a gentleman keep in his fob pocket?", a: ["Notebook", "Handkerchief", "Watch"], correctAnswer: "Watch"),
                        Question(q: "How would one say goodbye in Spanish?", a: ["Au Revoir", "Adiós", "Salir"], correctAnswer: "Adiós"),
                        Question(q: "Which of these colours is NOT featured in the logo for Google?", a: ["Green", "Orange", "Blue"], correctAnswer: "Orange"),
                        Question(q: "What alcoholic drink is made from molasses?", a: ["Rum", "Whisky", "Gin"], correctAnswer: "Rum"),
                        Question(q: "What type of animal was Harambe?", a: ["Panda", "Gorilla", "Crocodile"], correctAnswer: "Gorilla"),
                        Question(q: "Where is Tasmania located?", a: ["Indonesia", "Australia", "Scotland"], correctAnswer: "Australia")]
    

    
    //return the quiz progress for progress bar
    func quizProgress() -> Float{
        return Float(currentQuestionNumber+1)/Float(questionBank.count)
    }
    

    //display the current question on the view
    func currentQuestion() -> String{
        return questionBank[currentQuestionNumber].q
    }
    func currentAsw(_ answer: Int) -> String{
        return questionBank[currentQuestionNumber].a[answer-1]
    }
    func correctAsw() -> String{
        return questionBank[currentQuestionNumber].correctAnswer
    }
    
    //determin if the answer from user is correct
    func isAnswerCorrect(_ candidateAnswer: String) -> Bool{
        if candidateAnswer == correctAsw() {
            return true
        } else {
            return false
        }
    }
    
    mutating func questionNumberTracking(){
        currentQuestionNumber += 1
        if currentQuestionNumber == questionBank.count{
            currentQuestionNumber = 0
        }
    }
}
