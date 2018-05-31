//
//  ViewController.swift
//  psps
//
//  Created by capstone1_7 on 2018. 5. 17..
//  Copyright © 2018년 capstone2. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func goCameraMode(_ sender: Any) {
        
        let sb = UIStoryboard(name: "Main", bundle: nil)
        
        if let go_camera_mode = sb.instantiateViewController(withIdentifier: "cameramode") as? CameraModeInit {
            self.present(go_camera_mode, animated: true, completion: nil)
        }
    }
    
    @IBAction func goManuallySelect(_ sender: Any) {
       
        let sb = UIStoryboard(name: "Main", bundle: nil)
        
        if let go_manually_mode = sb.instantiateViewController(withIdentifier: "manuallyselect") as? ManuallySelect {
            self.present(go_manually_mode, animated: true, completion: nil)
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

