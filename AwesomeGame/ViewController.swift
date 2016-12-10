//
//  ViewController.swift
//  AwesomeGame
//
//  Created by Mr.Awesome on 11/2/2559 BE.
//  Copyright © 2559 BE me. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player: AVAudioPlayer = AVAudioPlayer()
    
    @IBOutlet weak var settingButton: UIButton!
    @IBOutlet weak var PlayButton: UIButton!
    
    @IBOutlet weak var statusMessage: UILabel!
    @IBOutlet weak var submitButton: UIButton!
    @IBOutlet weak var requiredScoreLabel: UILabel!
    
    @IBOutlet weak var Count: UILabel!
    
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
    
    
    var requiredScore = 0;
    var totalScore = 0
    
    static var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(ViewController.startCount), name: NSNotification.Name(rawValue: "dismissSetting"), object: nil)
        
        settingButton.isHidden = true
        statusMessage.isHidden = true
        submitButton.isHidden = true
        requiredScoreLabel.isHidden = true
        Count.text = "Press 'Play' to start the game"
        One_One.isHidden = true
        One_Two.isHidden = true
        One_Three.isHidden = true
        One_Four.isHidden = true
        Two_One.isHidden = true
        Two_Two.isHidden = true
        Two_Three.isHidden = true
        Two_Four.isHidden = true
        Three_One.isHidden = true
        Three_Two.isHidden = true
        Three_Three.isHidden = true
        Three_Four.isHidden = true
        Four_One.isHidden = true
        Four_Two.isHidden = true
        Four_Three.isHidden = true
        Four_Four.isHidden = true
    
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    //commenting here
    //just testing
    
//    override func viewDidAppear(_ animated: Bool) {
//        startCount()
//    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

    func random() -> Int{
        return Int(arc4random_uniform(9)+1)
    }
    
    static var countTimer = 0
    
     func temp(){
        
        ViewController.countTimer += 1
        print(ViewController.countTimer)
        Count.text = String(ViewController.countTimer)
        if ViewController.countTimer == 30{
            statusMessage.text = "Game Over!"
            ViewController.timer.invalidate()
        }
    }
    
     func startCount(){
        ViewController.timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.temp), userInfo: nil, repeats: true)
        
    }
    
    @IBAction func startTheGame(_ sender: AnyObject) {
        
        PlayButton.isHidden = true
        
        settingButton.isHidden = false
        statusMessage.isHidden = false
        submitButton.isHidden = false
        requiredScoreLabel.isHidden = false
        One_One.isHidden = false
        One_Two.isHidden = false
        One_Three.isHidden = false
        One_Four.isHidden = false
        Two_One.isHidden = false
        Two_Two.isHidden = false
        Two_Three.isHidden = false
        Two_Four.isHidden = false
        Three_One.isHidden = false
        Three_Two.isHidden = false
        Three_Three.isHidden = false
        Three_Four.isHidden = false
        Four_One.isHidden = false
        Four_Two.isHidden = false
        Four_Three.isHidden = false
        Four_Four.isHidden = false
        
        startCount()
        
        statusMessage.text = "Welcome"
        
        let numToAdd = Int(arc4random_uniform(3)+2)
        
        
        let num1_1 = random()
        let num1_2 = random()
        let num1_3 = random()
        let num1_4 = random()
        let num2_1 = random()
        let num2_2 = random()
        let num2_3 = random()
        let num2_4 = random()
        let num3_1 = random()
        let num3_2 = random()
        let num3_3 = random()
        let num3_4 = random()
        let num4_1 = random()
        let num4_2 = random()
        let num4_3 = random()
        let num4_4 = random()
        
        One_One.setTitle(String(num1_1), for: .normal)
        One_Two.setTitle(String(num1_2), for: .normal)
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
    
    func numForScore() -> String{
        
        var score = 0

        var arrayForNum = [UIButton]()
        
        arrayForNum.append(One_One)
        arrayForNum.append(One_Two)
        arrayForNum.append(One_Three)
        arrayForNum.append(One_Four)
        arrayForNum.append(Two_One)
        arrayForNum.append(Two_Two)
        arrayForNum.append(Two_Three)
        arrayForNum.append(Two_Four)
        arrayForNum.append(Three_One)
        arrayForNum.append(Three_Two)
        arrayForNum.append(Three_Three)
        arrayForNum.append(Three_Four)
        arrayForNum.append(Four_One)
        arrayForNum.append(Four_Two)
        arrayForNum.append(Four_Three)
        arrayForNum.append(Four_Four)
        
        
        var numToAdd = Int(arc4random_uniform(3)+2)
        
        for i in 2...numToAdd{
            var randomInArray = Int(arc4random_uniform(UInt32(arrayForNum.count)))
            var a = arrayForNum[randomInArray].currentTitle
            var b = Int(a!)!
            
            score += b
            arrayForNum.remove(at: randomInArray)
        }
        
        
        
        
        return String(score)
    }

    
    
    @IBAction func submitButton(_ sender: AnyObject) {
        if totalScore != requiredScore {
            statusMessage.text = "Game Over!"
        }
        else {
            
            statusMessage.text = "Great Job!"
            var replaceArray = [UIButton]()
            
            if One_One.isSelected{
                replaceArray.append(One_One)
                One_One.isSelected = false;
            }
            if One_Two.isSelected{
                replaceArray.append(One_Two)
                One_Two.isSelected = false;
            }
            if One_Three.isSelected{
                replaceArray.append(One_Three)
                One_Three.isSelected = false;
            }
            if One_Four.isSelected{
                replaceArray.append(One_Four)
                One_Four.isSelected = false;
            }
            if Two_One.isSelected{
                replaceArray.append(Two_One)
                Two_One.isSelected = false;
            }
            if Two_Two.isSelected{
                replaceArray.append(Two_Two)
                Two_Two.isSelected = false;
            }
            if Two_Three.isSelected{
                replaceArray.append(Two_Three)
                Two_Three.isSelected = false;
            }
            if Two_Four.isSelected{
                replaceArray.append(Two_Four)
                Two_Four.isSelected = false;
            }
            if Three_One.isSelected{
                replaceArray.append(Three_One)
                Three_One.isSelected = false;
            }
            if Three_Two.isSelected{
                replaceArray.append(Three_Two)
                 Three_Two.isSelected = false;
            }
            if Three_Three.isSelected{
                replaceArray.append(Three_Three)
                 Three_Three.isSelected = false;
            }
            if Three_Four.isSelected{
                replaceArray.append(Three_Four)
                 Three_Four.isSelected = false;
            }
            if Four_One.isSelected{
                replaceArray.append(Four_One)
                 Four_One.isSelected = false;
            }
            if Four_Two.isSelected{
                replaceArray.append(Four_Two)
                Four_Two.isSelected = false;
            }
            if Four_Three.isSelected{
                replaceArray.append(Four_Three)
                Four_Three.isSelected = false;
            }
            if Four_Four.isSelected{
                replaceArray.append(Four_Four)
                Four_Four.isSelected = false;
            }
            
            print(replaceArray.count)
            
            var numForTotalScore = Int(arc4random_uniform(UInt32(replaceArray.count)))
            replaceArray[numForTotalScore].setTitle(String(requiredScore), for: .normal)
            replaceArray.remove(at: numForTotalScore)
            
            for num in replaceArray{
                var ranNumForReplace = Int(arc4random_uniform(5))+2
                var a = num.currentTitle
                var b = Int(a!)! + ranNumForReplace
                num.setTitle(String(b), for: .normal)
               // num.isSelected = false;
            }
            
            requiredScore = Int(numForScore())!
            
            requiredScoreLabel.text = String(requiredScore)
            totalScore = 0
            
            ViewController.timer.invalidate()
            ViewController.countTimer = 0
            ViewController.timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.temp), userInfo: nil, repeats: true)
        }
    }
    
    
    
    

    
    
    @IBAction func dataFromOne_One(_ sender: AnyObject) {
        
        var a = One_One.currentTitle
        var b = a!

        
        if !One_One.isSelected {
            One_One.isSelected = true
            totalScore += Int(b)!
            print(totalScore)
        }
        else{
            One_One.isSelected = false
            totalScore -= Int(b)!
            print(totalScore)
        }
    
        
        
    }
    
    @IBAction func dataFromOne_Two(_ sender: AnyObject) {
       
        var a = One_Two.currentTitle
        var b = a!
        
        if !One_Two.isSelected {
            One_Two.isSelected = true
            totalScore += Int(b)!
            print(totalScore)
        }
        else{
            One_Two.isSelected = false
            totalScore -= Int(b)!
            print(totalScore)
        }
        
    }
    
   
    
    @IBAction func dataFromOne_Three(_ sender: AnyObject) {
        
        var a = One_Three.currentTitle
        var b = a!
        
        if !One_Three.isSelected {
            One_Three.isSelected = true
            totalScore += Int(b)!
            print(totalScore)
        }
        else{
            One_Three.isSelected = false
            totalScore -= Int(b)!
            print(totalScore)
        }
    }
    
    @IBAction func dataFromOne_Four(_ sender: AnyObject) {
        
        var a = One_Four.currentTitle
        var b = a!
        
        if !One_Four.isSelected {
            One_Four.isSelected = true
            totalScore += Int(b)!
            print(totalScore)
        }
        else{
            One_Four.isSelected = false
            totalScore -= Int(b)!
            print(totalScore)
        }
    }
    
    
    
    
    @IBAction func dataFromTwo_One(_ sender: AnyObject) {
        
        var a = Two_One.currentTitle
        var b = a!
        
        if !Two_One.isSelected {
            Two_One.isSelected = true
            totalScore += Int(b)!
            print(totalScore)
        }
        else{
            Two_One.isSelected = false
            totalScore -= Int(b)!
            print(totalScore)
        }
    }
    
    @IBAction func dataFromTwo_Two(_ sender: AnyObject) {
        
        var a = Two_Two.currentTitle
        var b = a!
        
        if !Two_Two.isSelected {
            Two_Two.isSelected = true
            totalScore += Int(b)!
            print(totalScore)
        }
        else{
            Two_Two.isSelected = false
            totalScore -= Int(b)!
            print(totalScore)
        }
    }
    
    @IBAction func dataFromTwo_Three(_ sender: AnyObject) {
        
        var a = Two_Three.currentTitle
        var b = a!
        
        if !Two_Three.isSelected {
            Two_Three.isSelected = true
            totalScore += Int(b)!
            print(totalScore)
        }
        else{
            Two_Three.isSelected = false
            totalScore -= Int(b)!
            print(totalScore)
        }
    }
    
    @IBAction func dataFromTwo_Four(_ sender: AnyObject) {
        
        var a = Two_Four.currentTitle
        var b = a!
        
        if !Two_Four.isSelected {
            Two_Four.isSelected = true
            totalScore += Int(b)!
            print(totalScore)
        }
        else{
            Two_Four.isSelected = false
            totalScore -= Int(b)!
            print(totalScore)
        }
    }

    @IBAction func dataFromThree_One(_ sender: AnyObject) {
        
        var a = Three_One.currentTitle
        var b = a!
        
        if !Three_One.isSelected {
            Three_One.isSelected = true
            totalScore += Int(b)!
            print(totalScore)
        }
        else{
            Three_One.isSelected = false
            totalScore -= Int(b)!
            print(totalScore)
        }
    }
    
    @IBAction func dataFromThree_Two(_ sender: AnyObject) {
        
        var a = Three_Two.currentTitle
        var b = a!
        
        if !Three_Two.isSelected {
            Three_Two.isSelected = true
            totalScore += Int(b)!
            print(totalScore)
        }
        else{
            Three_Two.isSelected = false
            totalScore -= Int(b)!
            print(totalScore)
        }

    }
    
    @IBAction func dataFromThree_Three(_ sender: AnyObject) {
        
        var a = Three_Three.currentTitle
        var b = a!
        
        if !Three_Three.isSelected {
            Three_Three.isSelected = true
            totalScore += Int(b)!
            print(totalScore)
        }
        else{
            Three_Three.isSelected = false
            totalScore -= Int(b)!
            print(totalScore)
        }

    }
    
    @IBAction func dataFromThree_Four(_ sender: AnyObject) {
        
        var a = Three_Four.currentTitle
        var b = a!
        
        if !Three_Four.isSelected {
            Three_Four.isSelected = true
            totalScore += Int(b)!
            print(totalScore)
        }
        else{
            Three_Four.isSelected = false
            totalScore -= Int(b)!
            print(totalScore)
        }

    }
    
    @IBAction func dataFromFour_One(_ sender: AnyObject) {
        
        var a = Four_One.currentTitle
        var b = a!
        
        if !Four_One.isSelected {
            Four_One.isSelected = true
            totalScore += Int(b)!
            print(totalScore)
        }
        else{
            Four_One.isSelected = false
            totalScore -= Int(b)!
            print(totalScore)
        }

    }
    
    @IBAction func dataFromFour_Two(_ sender: AnyObject) {
        
        var a = Four_Two.currentTitle
        var b = a!
        
        if !Four_Two.isSelected {
            Four_Two.isSelected = true
            totalScore += Int(b)!
            print(totalScore)
        }
        else{
            Four_Two.isSelected = false
            totalScore -= Int(b)!
            print(totalScore)
        }

    }
    
    @IBAction func dataFromFour_Three(_ sender: AnyObject) {
        
        var a = Four_Three.currentTitle
        var b = a!
        
        if !Four_Three.isSelected {
            Four_Three.isSelected = true
            totalScore += Int(b)!
            print(totalScore)
        }
        else{
            Four_Three.isSelected = false
            totalScore -= Int(b)!
            print(totalScore)
        }

    }
    
    @IBAction func dataFromFour_Four(_ sender: AnyObject) {
        
        var a = Four_Four.currentTitle
        var b = a!
        
        if !Four_Four.isSelected {
            Four_Four.isSelected = true
            totalScore += Int(b)!
            print(totalScore)
        }
        else{
            Four_Four.isSelected = false
            totalScore -= Int(b)!
            print(totalScore)
        }

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "SettingSegway"{
            ViewController.timer.invalidate()
        }
        
    }
    
    
    
    
}

