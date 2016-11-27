//
//  ViewController.swift
//  AwesomeGame
//
//  Created by Mr.Awesome on 11/2/2559 BE.
//  Copyright © 2559 BE me. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var statusMessage: UILabel!
    
    
    @IBOutlet weak var requiredScoreLabel: UILabel!
    
    @IBOutlet weak var One_One: UIButton!
    @IBOutlet weak var One_Two: UIButton!
    @IBOutlet weak var One_Three: UIButton!
    @IBOutlet weak var One_Four: UIButton!
    @IBOutlet weak var Two_One: UIButton!
    @IBOutlet weak var Two_Two: UIButton!
    @IBOutlet weak var Two_Three: UIButton!
    @IBOutlet weak var Two_Four: UIButton!
    @IBOutlet weak var Three_One: UIButton!
    @IBOutlet weak var Three_Two: UIButton!
    @IBOutlet weak var Three_Three: UIButton!
    @IBOutlet weak var Three_Four: UIButton!
    @IBOutlet weak var Four_One: UIButton!
    @IBOutlet weak var Four_Two: UIButton!
    @IBOutlet weak var Four_Three: UIButton!
    @IBOutlet weak var Four_Four: UIButton!
    
    
    var totalScore = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    //commenting here
    //just testing

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func random() -> Int{
        return Int(arc4random_uniform(9)+1)
    }
    
    @IBAction func startTheGame(_ sender: AnyObject) {
        
        statusMessage.text = "Welcome"
        
        var numToAdd = Int(arc4random_uniform(3)+2)
        var requiredScore = 0;
        
        var num1_1 = random()
        var num1_2 = random()
        var num1_3 = random()
        var num1_4 = random()
        var num2_1 = random()
        var num2_2 = random()
        var num2_3 = random()
        var num2_4 = random()
        var num3_1 = random()
        var num3_2 = random()
        var num3_3 = random()
        var num3_4 = random()
        var num4_1 = random()
        var num4_2 = random()
        var num4_3 = random()
        var num4_4 = random()
        
        One_One.setTitle(String(num1_1), for: .normal)
        One_One.setTitleColor( UIColor.black , for: .normal)
        One_Two.setTitle(String(num1_2), for: .normal)
        One_Two.setTitleColor(UIColor.red , for: .normal)
        One_Three.setTitle(String(num1_3), for: .normal)
        One_Four.setTitle(String(num1_4) , for: .normal)
        Two_One.setTitle(String(num2_1), for: .normal)
        Two_Two.setTitle(String(num2_2), for: .normal)
        Two_Three.setTitle(String(num2_3) , for: .normal)
        Two_Four.setTitle(String(num2_4) , for: .normal)
        Three_One.setTitle(String(num3_1) , for: .normal)
        Three_Two.setTitle(String(num3_2) , for: .normal)
        Three_Three.setTitle(String(num3_3) , for: .normal)
        Three_Four.setTitle(String(num3_4), for: .normal)
        Four_One.setTitle(String(num4_1) , for: .normal)
        Four_Two.setTitle(String(num4_2), for: .normal)
        Four_Three.setTitle(String(num4_3), for: .normal)
        Four_Four.setTitle(String(num4_4) , for: .normal)
        
        var allNumOnScreen = [num1_1 , num1_2 , num1_3 , num1_4 , num2_1 , num2_2 , num2_3 , num2_4 , num3_1 , num3_2 , num3_3 , num3_4 , num4_1 , num4_2 , num4_3 , num4_4]
        
        for i in 2...numToAdd{
            var randomInArray = Int(arc4random_uniform(UInt32(allNumOnScreen.count)))
            requiredScore += allNumOnScreen[randomInArray]
            allNumOnScreen.remove(at: randomInArray)
        }
        
        requiredScoreLabel.text = String(requiredScore)
        
    }
    
    
    @IBAction func submitButton(_ sender: AnyObject) {
        
    }
    
    
    @IBAction func dataFromOne_One(_ sender: AnyObject) {
        var a = One_One.currentTitle
        var b = a!
        totalScore += Int(b)!
        print(totalScore)
        
    }
    
    @IBAction func dataFromOne_Two(_ sender: AnyObject) {
        var a = One_Two.currentTitle
        var b = a!
        totalScore += Int(b)!
        print(totalScore)
    }
    
    @IBAction func dataFromOne_Three(_ sender: AnyObject) {
        var a = One_Two.currentTitle
        var b = a!
        totalScore += Int(b)!
    }
    
    @IBAction func dataFromOne_Four(_ sender: AnyObject) {
        var a = One_Two.currentTitle
        var b = a!
        totalScore += Int(b)!
    }
    
    
    

}

