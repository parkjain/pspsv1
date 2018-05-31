//
//  DetailViewController.swift
//  psps
//
//  Created by capstone1_7 on 2018. 5. 22..
//  Copyright © 2018년 capstone2. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailLabelView: UIImageView!
    var DetailLabel: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        detailLabelView.image = DetailLabel
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    
    @IBAction func back(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    

}
