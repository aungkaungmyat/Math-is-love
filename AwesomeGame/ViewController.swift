//
//  ViewController.swift
//  AwesomeGame
//
//  Created by Mr.Awesome on 11/2/2559 BE.
//  Copyright © 2559 BE me. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var AddedScore: UILabel!
    @IBOutlet weak var RequiredScore: UILabel!
    @IBOutlet weak var One_One: UIButton!
    @IBOutlet weak var One_Two: UIButton!
    var a = 10
    var b = 15
    
    
    
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

    
    @IBAction func startTheGame(_ sender: AnyObject) {
        
        One_One.setTitle(String(10), for: .normal)
        One_One.setTitleColor( UIColor.black , for: .normal)
        One_Two.setTitle(String(15), for: .normal)
        One_Two.setTitleColor(UIColor.red , for: .normal)
    }
    
    @IBAction func dataFromOne_One(_ sender: AnyObject) {
        print("One_One is working")
    }
    
    @IBAction func dataFromOne_Two(_ sender: AnyObject) {
        print("One_Two is working")
    }
    
    
    
    

}

