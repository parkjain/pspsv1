//
//  ResultDetailViewController.swift
//  psps
//
//  Created by capstone1_7 on 2018. 6. 7..
//  Copyright © 2018년 capstone2. All rights reserved.
//

import UIKit

class ResultDetailViewController: UIViewController {

    @IBOutlet weak var textsection: UILabel!
    @IBOutlet weak var groupname: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        groupname.text = "그룹"
      //  textsection.text = resultSting[]

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

    @IBAction func back(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func gotoMain(_ sender: Any) {
        performSegue(withIdentifier: "gotoMain", sender: self)
    }
    
}
