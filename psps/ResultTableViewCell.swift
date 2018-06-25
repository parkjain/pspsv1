//
//  ResultTableViewCell.swift
//  psps
//
//  Created by capstone1_7 on 2018. 6. 25..
//  Copyright © 2018년 capstone2. All rights reserved.
//

import UIKit

class ResultTableViewCell: UITableViewCell {

    @IBOutlet weak var clCollectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}


extension ResultTableViewCell
{
    func setCollectionViewDataSourceDelegate
        <D: UICollectionViewDelegate & UICollectionViewDataSource>
        (_ dataSourceDelegate: D, forRow row:Int)
    {
        clCollectionView.delegate = dataSourceDelegate
        clCollectionView.dataSource = dataSourceDelegate
        
        clCollectionView.reloadData()
    }
}
