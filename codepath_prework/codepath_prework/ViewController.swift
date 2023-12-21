//
//  ViewController.swift
//  codepath_prework
//
//  Created by Kenneth Wan on 12/21/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameTextColor: UILabel!
    @IBOutlet weak var schoolTextColor: UILabel!
    @IBOutlet weak var jobTextColor: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var schoolLabel: UILabel!
    @IBOutlet weak var jobLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func changeBackgroundColor(_ sender: UIButton) {
        func changeColor() -> UIColor{
            let red = CGFloat.random(in: 0...1)
            let green = CGFloat.random(in: 0...1)
            let blue = CGFloat.random(in: 0...1)

            return UIColor(red: red, green: green, blue: blue, alpha: 0.5)
        }
        
        let randomColor = changeColor()
        view.backgroundColor = randomColor
    }
    
    @IBAction func changeTextColor(_ sender: UIButton) {
        func changeColor() -> UIColor{
            let red = CGFloat.random(in: 0...1)
            let green = CGFloat.random(in: 0...1)
            let blue = CGFloat.random(in: 0...1)

            return UIColor(red: red, green: green, blue: blue, alpha: 0.5)
        }
        
        let randomColor = changeColor()
        nameTextColor.textColor = randomColor
        schoolTextColor.textColor = randomColor
        jobTextColor.textColor = randomColor
    }
    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var schoolField: UITextField!
    @IBOutlet weak var jobField: UITextField!
    
    @IBAction func nameChange(_ sender: UITextView) {
        nameLabel.text = sender.text
    }
    @IBAction func schoolChange(_ sender: UITextField) {
        schoolLabel.text = sender.text
    }
    @IBAction func jobChange(_ sender: UITextField) {
        jobLabel.text = sender.text
    }
}

