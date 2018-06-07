//
//  ResulltViewController.swift
//  psps
//
//  Created by capstone1_7 on 2018. 6. 7..
//  Copyright © 2018년 capstone2. All rights reserved.
//

import UIKit

class ResulltViewController: UIViewController {

    @IBOutlet weak var ResultCollectionView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        arrCombined.addObjects(from: [arr1, arr2, arr3, arr4, arr5, arr6])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}

extension ResulltViewController : UICollectionViewDataSource, UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        var reusable : UICollectionReusableView? = nil
        
        if(kind == UICollectionElementKindSectionHeader){
            let view = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionElementKindSectionHeader, withReuseIdentifier: "reusable", for: indexPath) as! ResultCollectionReusableView
            
            view.lblHeaderText.text = arrsection[indexPath.section]
            
            reusable = view
        }
        return reusable!
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return arrsection.count
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return (arrCombined.object(at: section) as! NSArray).count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell : ResultCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "resultCell", for: indexPath) as! ResultCollectionViewCell
        
        if(indexPath.section == 0)
        {
            cell.ResultImageView.image = arr1[indexPath.row]
        }else if(indexPath.section == 1)
        {
            cell.ResultImageView.image = arr2[indexPath.row]
        }else if(indexPath.section == 2)
        {
            cell.ResultImageView.image = arr3[indexPath.row]
        }else if(indexPath.section == 3)
        {
            cell.ResultImageView.image = arr4[indexPath.row]
        }else if(indexPath.section == 4)
        {
            cell.ResultImageView.image = arr5[indexPath.row]
        }else if(indexPath.section == 5)
        {
            cell.ResultImageView.image = arr6[indexPath.row]
        }
        
        return cell
    }
}

