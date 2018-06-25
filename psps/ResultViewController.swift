//
//  ResultViewController.swift
//  psps
//
//  Created by capstone1_7 on 2018. 6. 25..
//  Copyright © 2018년 capstone2. All rights reserved.
//

import UIKit

let reuseIdentifier1 = "group1"
let reuseIdentifier2 = "group2"
let reuseIdentifier3 = "group3"
let reuseIdentifier4 = "group4"
let reuseIdentifier5 = "group5"
let reuseIdentifier6 = "group6"


var arr0: Array<UIImage> = []
var memo0: Array<String> = []

class ResultViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBAction func gotoMAIN(_ sender: Any) {
        performSegue(withIdentifier: "gotoMain", sender: self)
    }
    
    
    @IBAction func group1go(_ sender: Any) {
        arr0 = arr1
        memo0 = memo1
        performSegue(withIdentifier: "go1", sender: self)
    }
    @IBAction func group2go(_ sender: Any) {
        arr0 = arr2
        memo0 = memo2
        performSegue(withIdentifier: "go2", sender: self)
    }
    @IBAction func group3go(_ sender: Any) {
        arr0 = arr3
        memo0 = memo3
        performSegue(withIdentifier: "go3", sender: self)
    }
    @IBAction func group4go(_ sender: Any) {
        arr0 = arr4
        memo0 = memo4
        performSegue(withIdentifier: "go4", sender: self)
    }
    @IBAction func group5go(_ sender: Any) {
        arr0 = arr5
        memo0 = memo5
        performSegue(withIdentifier: "go5", sender: self)
    }
    @IBAction func group6go(_ sender: Any) {
        arr0 = arr6
        memo0 = memo6
        performSegue(withIdentifier: "go6", sender: self)
    }
    
 
    @IBOutlet weak var collectionview1: UICollectionView!
    @IBOutlet weak var collectionview2: UICollectionView!
    @IBOutlet weak var collectionview3: UICollectionView!
    @IBOutlet weak var collectionview4: UICollectionView!
    @IBOutlet weak var collectionview5: UICollectionView!
    @IBOutlet weak var collectionview6: UICollectionView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        collectionview1.dataSource = self
        collectionview1.delegate = self
        collectionview2.dataSource = self
        collectionview2.delegate = self
        collectionview3.dataSource = self
        collectionview3.delegate = self
        collectionview4.dataSource = self
        collectionview4.delegate = self
        collectionview5.dataSource = self
        collectionview5.delegate = self
        collectionview6.dataSource = self
        collectionview6.delegate = self
        
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        var count = 0
        
        if (collectionView == self.collectionview1) {
            count = arr1.count
        }
        else if(collectionView == self.collectionview2) {
            count = arr2.count
        }
        else if(collectionView == self.collectionview3) {
            count = arr3.count
        }
        else if(collectionView == self.collectionview4) {
            count = arr4.count
        }
        else if(collectionView == self.collectionview5) {
            count = arr5.count
        }
        else {
            count = arr6.count
        }
        
        return count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if (collectionView == self.collectionview1){
            let cell: group1 = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier1, for: indexPath) as! group1
            cell.image1.image = arr1[indexPath.row]
            return cell
        }
        else if(collectionView == self.collectionview2){
            let cell2: group2 = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier2, for: indexPath) as! group2
            cell2.image2.image = arr2[indexPath.row]
            return cell2
        }
        else if(collectionView == self.collectionview3){
            let cell3: group3 = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier3, for: indexPath) as! group3
            cell3.image3.image = arr3[indexPath.row]
            return cell3
        }
        else if(collectionView == self.collectionview4){
            let cell4: group4 = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier4, for: indexPath) as! group4
            cell4.image4.image = arr4[indexPath.row]
            return cell4
        }
        else if(collectionView == self.collectionview5){
            let cell5: group5 = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier5, for: indexPath) as! group5
            cell5.image5.image = arr5[indexPath.row]
            return cell5
        }
        else {
            let cell6: group6 = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier6, for: indexPath) as! group6
            cell6.image6.image = arr6[indexPath.row]
            return cell6
        }
        
    }
    
}
