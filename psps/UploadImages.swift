//
//  UploadImages.swift
//  psps
//
//  Created by capstone1_7 on 2018. 5. 20..
//  Copyright © 2018년 capstone2. All rights reserved.
//

import UIKit
import Foundation
import CFNetwork


class UploadImages: UIViewController {
    
    var transferImage: UIImage!
    var memo: String!
    var color: String!
    
    @IBOutlet weak var transferedImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        transferedImage.image = transferImage
      
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func uploadbuttonTapped(_ sender: Any) {
   }
  
}
