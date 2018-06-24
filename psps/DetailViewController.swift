//
//  DetailViewController.swift
//  psps
//
//  Created by capstone1_7 on 2018. 5. 22..
//  Copyright © 2018년 capstone2. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var DetailText: Array<String> = ["물 온도 95도로 세탁해주세요\n\n세탁기를 이용한 세탁과 손세탁 모두 가능합니다\n\n세제 종류에는 제한이 없습니다","물 온도 60도로 세탁해주세요\n\n세탁기를 이용한 세탁과 손세탁 모두 가능합니다\n\n세제 종류에는 제한이 없습니다","물 온도 40도로 세탁해주세요\n\n세탁기를 이용한 세탁과 손세탁 모두 가능합니다\n\n세제 종류에는 제한이 없습니다","물 온도 40도로 세탁해주세요\n\n세탁기를 이용한 세탁과 손세탁 모두 가능합니다\n\n세탁기로 세탁하실 경우 약하게 세탁해주세요\n\n세제 종류에는 제한이 없습니다","물 온도 30도로 세탁해주세요\n\n세탁기를 이용한 세탁과 손세탁 모두 가능합니다\n\n세탁기로 세탁하실 경우 약하게 세탁해주세요\n\n중성 세제를 사용해주세요","물 온도 30도로 세탁해주세요\n\n세탁기 사용은 불가합니다, 손세탁만 가능합니다\n\n중성 세제를 사용해주세요","물세탁이 불가능합니다\n\n가까운 세탁소에 맡겨주세요","햇빛에 건조합니다\n\n옷걸이에 걸어서 건조해주세요","그늘에 건조합니다\n\n옷걸이에 걸어서 건조해주세요","햇빛에 건조합니다\n\n바닥에 뉘어서 건조해주세요","그늘에 건조합니다\n\n바닥에 뉘어서 건조해주세요","세탁 후 건조시 기계 건조가 가능합니다","세탁 후 건조시 기계 건조가 불가합니다","손으로 약하게 짜주세요","손으로 짜면 안됩니다"]
    
    @IBOutlet weak var DetailContents: UILabel!
    
    @IBOutlet weak var detailLabelView: UIImageView!
    var DetailLabel: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        detailLabelView.image = DetailLabel
        //DetailContents.font = UIFont(name: "10X10", size: 20)
        DetailContents.text = DetailText[SelectedLabelNumber!]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    
    @IBAction func back(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    

}
