//
//  UploadImages.swift
//  psps
//
//  Created by capstone1_7 on 2018. 5. 20..
//  Copyright © 2018년 capstone2. All rights reserved.
//

import UIKit
import Foundation

var arr1 : Array<UIImage> = []
var arr2 : Array<UIImage> = []
var arr3 : Array<UIImage> = []
var arr4 : Array<UIImage> = []
var arr5 : Array<UIImage> = []
var arr6 : Array<UIImage> = []

var arrsection : Array<String> = []
var arrCombined : NSMutableArray!

class UploadImages: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var ImageCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ImageCollectionView.delegate = self
        ImageCollectionView.dataSource = self
        print(Images.count)
        
        let itemSize = UIScreen.main.bounds.width/3 - 3
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsetsMake(20, 0, 10, 0)
        layout.itemSize = CGSize(width: itemSize, height: itemSize)
        layout.minimumInteritemSpacing = 3
        layout.minimumLineSpacing = 3
        
        ImageCollectionView.collectionViewLayout = layout
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath : IndexPath) -> UICollectionViewCell {
        print("collection view is called!")
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell2", for: indexPath) as! myCell2
        cell.ImageView2.image = Images[indexPath.row]
        return cell
    }
    
    @IBAction func uploadbuttonTapped(_ sender: Any) {
        
        // 분류 결과 받아서 변수에 저장
        //performSegue(withIdentifier: "gotoResult", sender: self)
        
   }
    
    @IBAction func gotoAdd(_ sender: Any) {
        performSegue(withIdentifier: "gotoAdd", sender: self)
    }
    
  
}
