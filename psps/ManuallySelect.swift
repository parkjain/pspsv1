//
//  ManuallySelect.swift
//  psps
//
//  Created by capstone1_7 on 2018. 5. 17..
//  Copyright © 2018년 capstone2. All rights reserved.
//

import UIKit

class ManuallySelect: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet weak var myCollectionView: UICollectionView!
    
    let array:[String] = ["1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"]
    
    var selectedLabel: UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let itemSize = UIScreen.main.bounds.width/4 - 3
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsetsMake(20, 0, 10, 0)
        layout.itemSize = CGSize(width: itemSize, height: itemSize)
        
        layout.minimumInteritemSpacing = 3
        layout.minimumLineSpacing = 3
        
        myCollectionView.collectionViewLayout = layout
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return array.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! myCell
        cell.myImageView.image = UIImage(named: array[indexPath.row] + ".png")
        
        return cell
    
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath)
    {
        let cell = collectionView.cellForItem(at: indexPath) as! myCell
        selectedLabel = cell.myImageView.image
        performSegue(withIdentifier: "seeDetail", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destViewController: DetailViewController = segue.destination as! DetailViewController
        destViewController.DetailLabel = selectedLabel
    }
    
    @IBAction func goback(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
   

}
