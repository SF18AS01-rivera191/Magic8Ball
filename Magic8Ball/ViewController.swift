//
//  ViewController.swift
//  Magic8Ball
//
//  Created by Cristian Rivera on 1/7/19.
//  Copyright © 2019 Cristian Rivera. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let labelAnswer:UILabel = UILabel();
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        labelAnswer.text = "Here is the answer of the magic eight ball"
        labelAnswer.backgroundColor = .white;
        labelAnswer.textAlignment = .center;
        labelAnswer.numberOfLines = 0;
        labelAnswer.isHidden = true;
    }
    
    func magicEightBall() -> String{
        let answers: [String] = [   //Create an array of five Strings.
            "It is certain.",
            "It is decidedly so.",
            "Without a doubt.",
            "Yes - definitely.",
            "You may rely on it.",
            "As I see it, yes.",
            "Most likely.",
            "Outlook good.",
            "Yes.",
            "Signs point to yes.",
            "Reply hazy, try again.",
            "Ask again later.",
            "Better not tell you now.",
            "Cannot predict now.",
            "Concentrate and ask again.",
            "Don't count on it.",
            "My reply is no.",
            "My sources say no.",
            "Outlook not so good.",
            "Very doubtful."

        ];
        
        
        let randomNum: Int = Int.random(in: 0 ..< 20); //say answers.count instead of 5
        return answers[randomNum];
    }
    
    func randomColor() -> UIColor {
        
        let colors: [UIColor] = [
            .magenta,
            .orange,
            .cyan,
            .green,
            .purple,
            .yellow,
            .blue,
            .brown
        ];
        
        let randomCol: Int = Int.random(in: 0 ..< colors.count);
        return colors[randomCol];
        
        //return colors[Int.random(in: 0 ..< colors.count)];
    };
    
    func updateUI(){
        //let labelAnswer:UILabel = UILabel();
        
        labelAnswer.textColor = randomColor();
        labelAnswer.text = """
            Here is the answer of the magic eight:
            \(magicEightBall())
            """;
        labelAnswer.frame.origin = CGPoint(x: 20, y: 200.0);
        labelAnswer.numberOfLines = 0;
        labelAnswer.frame.size = labelAnswer.intrinsicContentSize;
        labelAnswer.frame.size = CGSize(width: view.frame.width - 40, height: labelAnswer.frame.height);
        labelAnswer.isHidden = false;
        view.addSubview(labelAnswer);
        
    };
    
    @IBAction func userInput(_ sender: UITextField) {
        sender.resignFirstResponder();
        updateUI();
    }
    
}

