//
//  LoadingImageViewViewController.swift
//  psps
//
//  Created by capstone1_7 on 2018. 6. 19..
//  Copyright © 2018년 capstone2. All rights reserved.
//

import UIKit

class LoadingImageViewViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func StartButtonClicked(_ sender: Any) {
        
        performSegue(withIdentifier: "gotoMain", sender: self)
        
    }
    

}
