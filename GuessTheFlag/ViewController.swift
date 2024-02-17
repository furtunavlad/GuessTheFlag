//
//  ViewController.swift
//  GuessTheFlag
//
//  Created by Vlad Furtuna on 17.02.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var buttonTop: UIButton!
    @IBOutlet var buttonMiddle: UIButton!
    @IBOutlet var buttonBottom: UIButton!
    
    var countries = [String]()
    var score = 0
    var correctAnswer = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        countries += ["estonia", "france", "germany", "ireland", "italy", "monaco", "nigeria", "poland", "russia", "spain", "uk", "us"]
        
        askQuestion()
    }
    
    
    func askQuestion() {
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
        
        buttonTop.setImage(UIImage(named: countries[0]), for: .normal)
        buttonMiddle.setImage(UIImage(named: countries[1]), for: .normal)
        buttonBottom.setImage(UIImage(named: countries[2]), for: .normal)
        
        title = countries[correctAnswer].uppercased()
    }
    
    
    @IBAction func ButtonTapped(_ sender: UIButton) {
        
    }
    

}

