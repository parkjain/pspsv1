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





class ResultViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
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
            // if (collectionView == self.DashBoardMainSection2CollectionViewOutlet)
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
            let cell:group1 = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier1, for: indexPath) as! group1
            cell.image1.image = arr1[indexPath.row]
            return cell
        }
        else if(collectionView == self.collectionview2){
            let cell2:group2 = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier2, for: indexPath) as! group2
            cell2.image2.image = arr2[indexPath.row]
            return cell2
        }
        else if(collectionView == self.collectionview3){
            let cell3:group3 = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier3, for: indexPath) as! group3
            cell3.image3.image = arr3[indexPath.row]
            return cell3
        }
        else if(collectionView == self.collectionview4){
            let cell4:group4 = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier4, for: indexPath) as! group4
            cell4.image4.image = arr4[indexPath.row]
            return cell4
        }
        else if(collectionView == self.collectionview5){
            let cell5:group5 = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier5, for: indexPath) as! group5
            cell5.image5.image = arr5[indexPath.row]
            return cell5
        }
        else {
            let cell6:group6 = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier6, for: indexPath) as! group6
            cell6.image6.image = arr6[indexPath.row]
            return cell6
        }
            
            
    }
    
}


/*
class ResultViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    let collectionView1 = UICollectionView()
    let collectionView2 = UICollectionView()
    let collectionView3 = UICollectionView()
    let collectionView4 = UICollectionView()
    let collectionView5 = UICollectionView()
    let collectionView6 = UICollectionView()
    let collectionView1Identifier = "group1"
    let collectionView2Identifier = "group2"
    let collectionView3Identifier = "group3"
    let collectionView4Identifier = "group4"
    let collectionView5Identifier = "group5"
    let collectionView6Identifier = "group6"
    
    override func viewDidLoad() {
        // Initialize the collection views, set the desired frames
        collectionView1.delegate = self
        collectionView2.delegate = self
        collectionView3.delegate = self
        collectionView4.delegate = self
        collectionView5.delegate = self
        collectionView6.delegate = self
        
        collectionView1.dataSource = self
        collectionView2.dataSource = self
        collectionView3.dataSource = self
        collectionView4.dataSource = self
        collectionView5.dataSource = self
        collectionView6.dataSource = self
        
        self.view.addSubview(collectionView1)
        self.view.addSubview(collectionView2)
        self.view.addSubview(collectionView3)
        self.view.addSubview(collectionView4)
        self.view.addSubview(collectionView5)
        self.view.addSubview(collectionView6)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.collectionView1 {
            let cell1 = collectionView.dequeueReusableCell(withReuseIdentifier: collectionView1Identifier, for: indexPath as IndexPath) as UICollectionViewCell
            cell1.image1.image = arr1[indexPath.row]
            return cell1
        }
        else if collectionView == self.collectionView2{
            let cell2 = collectionView.dequeueReusableCell(withReuseIdentifier: collectionView2Identifier, for: indexPath as IndexPath) as UICollectionViewCell
           
            return cell2
        }
        else if collectionView == self.collectionView3{
            let cell3 = collectionView.dequeueReusableCell(withReuseIdentifier: collectionView2Identifier, for: indexPath as IndexPath) as UICollectionViewCell
            
            return cell3
        }
        else if collectionView == self.collectionView4{
            let cell4 = collectionView.dequeueReusableCell(withReuseIdentifier: collectionView2Identifier, for: indexPath as IndexPath) as UICollectionViewCell
            
            return cell4
        }
        else if collectionView == self.collectionView5{
            let cell5 = collectionView.dequeueReusableCell(withReuseIdentifier: collectionView2Identifier, for: indexPath as IndexPath) as UICollectionViewCell
            
            return cell5
        }
        else{
            let cell6 = collectionView.dequeueReusableCell(withReuseIdentifier: collectionView2Identifier, for: indexPath as IndexPath) as UICollectionViewCell
            
            return cell6
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.collectionView1 {
            return arr1.count// Replace with count of your data for collectionViewA
        }
        else if collectionView == self.collectionView2 {
            return arr2.count
        }
        else if collectionView == self.collectionView3 {
            return arr3.count
        }
        else if collectionView == self.collectionView4 {
            return arr4.count
        }
        else if collectionView == self.collectionView5 {
            return arr5.count
        }
        else {
            return arr6.count
        }
        
        }

}



*/





/*
class ResultViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arr1.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath : IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "group1", for: indexPath) as! group1
        cell.image1.image = Images[indexPath.row]
        return cell
    }


}
 */


/*
class ResultViewController2: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arr2.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath : IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "group2", for: indexPath) as! group2
        cell.image2.image = Images[indexPath.row]
        return cell
    }
    
    
}

class ResultViewController3: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arr3.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath : IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "group3", for: indexPath) as! group3
        cell.image3.image = Images[indexPath.row]
        return cell
    }
    
    
}

class ResultViewController4: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arr4.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath : IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "group4", for: indexPath) as! group4
        cell.image4.image = Images[indexPath.row]
        return cell
    }
    
    
}

class ResultViewController5: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arr5.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath : IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "group5", for: indexPath) as! group5
        cell.image5.image = Images[indexPath.row]
        return cell
    }
    
    
}

class ResultViewController6: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arr6.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath : IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "group6", for: indexPath) as! group6
        cell.image6.image = Images[indexPath.row]
        return cell
    }
    
    
}
*/
