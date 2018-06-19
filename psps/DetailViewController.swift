//
//  DetailViewController.swift
//  psps
//
//  Created by capstone1_7 on 2018. 5. 22..
//  Copyright © 2018년 capstone2. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var DetailText: Array<String> = ["물 온도 95도로 세탁\n세탁기, 손세탁 가능\n세제 종류 제한 없음","물 온도 60도로 세탁\n세탁기, 손세탁 가능\n세제 종류 제한 없음","물 온도 40도로 세탁\n세탁기, 손세탁 가능\n세제 종류 제한 없음","물 온도 약40도로 세탁\n세탁기, 손세탁 가능\n세제 종류 제한 없음","물 온도 약30도로 세탁\n세탁기로 약하게 세탁, 손세탁 가능\n중성 세제 사용","물 온도 약30도로 세탁\n세탁기 사용 불가능, 손세탁만 가능\n중성 세제 사용","물세탁 불가능","햇빛에 건조\n옷걸이게 걸어서 건조","그늘에 건조\n옷걸이게 걸어서 건조","햇빛에 건조\n바닥에 뉘어서 건조","그늘에 건조\n바닥에 뉘어서 건조","세탁 후 건조할 때 기계 건조 할 수 있음","세탁 후 건조할 때 기계 건조 할 수 없음","손으로 약하게 짬","손으로 짜면 안됨"]
    
    @IBOutlet weak var DetailContents: UILabel!
    
    @IBOutlet weak var detailLabelView: UIImageView!
    var DetailLabel: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        detailLabelView.image = DetailLabel
        DetailContents.numberOfLines = 0
        DetailContents.text = DetailText[SelectedLabelNumber!]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    
    @IBAction func back(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    

}
