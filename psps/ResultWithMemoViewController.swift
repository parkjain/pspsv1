//
//  ResultWithMemoViewController.swift
//  psps
//
//  Created by capstone1_7 on 2018. 6. 25..
//  Copyright © 2018년 capstone2. All rights reserved.
//

import UIKit


class ResultWithMemoViewCell: UITableViewCell {
    
    @IBOutlet weak var imagewithmemo: UIImageView!
    @IBOutlet weak var memoinresult: UILabel!
    
}
class ResultWithMemoViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    

    @IBOutlet weak var tableresultview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableresultview.dataSource = self
        tableresultview.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return arr0.count
    }
    

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "resultcell", for: indexPath) as! ResultWithMemoViewCell
        cell.imagewithmemo.layer.masksToBounds = true

        cell.imagewithmemo.image = arr0[indexPath.row]
        cell.memoinresult.text = memo0[indexPath.row]
        return cell
        
    }
    
}
