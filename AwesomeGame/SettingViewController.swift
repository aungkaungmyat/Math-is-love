//
//  SettingViewController.swift
//  AwesomeGame
//
//  Created by Mr.Awesome on 11/30/2559 BE.
//  Copyright © 2559 BE me. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

    @IBAction func Close(_ sender: Any) {
        self.dismiss(animated: true, completion: {() in
            NotificationCenter.default.post(name: NSNotification.Name(rawValue: "dismissSetting"), object: nil)
        })
            }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
