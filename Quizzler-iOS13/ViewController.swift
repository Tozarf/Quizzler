//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var trueBtn: UIButton!
    @IBOutlet weak var falseBtn: UIButton!
    
    let questions = [["Superman could beat Donatello","False"],["Rats can train turtles","True"],["Is it snowing?","True"]]
    var qNum:Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }


    @IBAction func answerBtnPressed(_ sender: UIButton) {
        
        let userAnswer = sender.titleLabel?.text
        let correctAnswer = questions[qNum][1]
        
        if userAnswer == correctAnswer {
            print("nice bro")
        }
        if (questions.count - 1) != qNum{
            qNum += 1
        }else{
            qNum = 0
        }
        updateUI()
        
    }
    func updateUI(){
        questionLabel.text = questions[qNum][0]
        
    }
}

