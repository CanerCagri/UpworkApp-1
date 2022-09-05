//
//  ViewController.swift
//  UpworkApp-1
//
//  Created by Caner Çağrı on 5.09.2022.
//

import UIKit


class ViewController: UIViewController {
    @IBOutlet var scoreLabel: UILabel!
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var currentQuestLabel: UILabel!
    @IBOutlet var yesButton: UIButton!
    @IBOutlet var noButton: UIButton!
    @IBOutlet var nextButton: UIButton!
    @IBOutlet var questDescription: UILabel!
    
    var score = 0
    var questionCount = 0 {
        didSet {
            questionLabel.text = "Question #\(questionCount)"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        askQuestion()
    }
    
    func askQuestion() {
        nextButton.clipsToBounds = true
        nextButton.layer.cornerRadius = 0.5 * nextButton.bounds.size.width
        questDescription.isHidden = true
        questionCount += 1
        MockData.dataArray.shuffle()
        currentQuestLabel.text = MockData.dataArray[0].title
    }
    
    @IBAction func button(_ sender: UIButton) {
        if sender.tag == 0 {
            if MockData.dataArray[0].answer == true {
                trueSide()
            } else {
                falseSide()
            }
        } else if sender.tag == 1 {
            if MockData.dataArray[0].answer == false {
                trueSide()
            } else {
                falseSide()
            }
        } else if sender.tag == 2 {
            nextButtonDeactivate()
            askQuestion()
        }
    }
    
    func trueSide() {
        print("Yes")
        score += 1
        scoreLabel.text = "Score: \(score)"
        nextButton.setTitle("True -> Next", for: .normal)
        nextButton.backgroundColor = .systemGreen
        nextButton.setTitleColor(.label, for: .normal)
        nextButtonActivate()
    }
    
    func falseSide() {
        print("No")
        score -= 1
        scoreLabel.text = "Score: \(score)"
        questDescription.text = "Additional Info: \(MockData.dataArray[0].description)"
        questDescription.isHidden = false
        nextButton.setTitle("Wrong -> Next", for: .normal)
        nextButton.backgroundColor = .systemBrown
        nextButton.setTitleColor(.white, for: .normal)
        nextButtonActivate()
    }
    
    func nextButtonActivate() {
        nextButton.isHidden = false
        yesButton.isEnabled = false
        noButton.isEnabled = false
    }
    func nextButtonDeactivate() {
        questDescription.isHidden = true
        nextButton.isHidden = true
        yesButton.isEnabled = true
        noButton.isEnabled = true
    }
}
