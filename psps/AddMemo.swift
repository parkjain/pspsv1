//
//  AddMemo.swift
//  psps
//
//  Created by capstone1_7 on 2018. 5. 20..
//  Copyright © 2018년 capstone2. All rights reserved.
//

import UIKit


class AddMemo: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate{

    var SelectedImage: UIImage!
    let ColorArray = ["White", "Red", "Blue"]
    var SelectedColor: String!
    
    @IBOutlet weak var selectedimageView: UIImageView!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var colorPicker: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        selectedimageView.image = SelectedImage!
        self.textField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return (true)
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return ColorArray[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return ColorArray.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        SelectedColor = ColorArray[row]
        color.append(SelectedColor)
    }
    
    func createAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.alert)
        
        alert.addAction(UIAlertAction(title: "확인", style: UIAlertActionStyle.default, handler: { (action) in
            alert.dismiss(animated: true, completion: nil)
        }))
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func cancelMemo(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func storeButtonClicked(_ sender: Any) {
        if textField.text == "" {
            createAlert(title: "경고!", message: "메모를 추가해주세요!!!")
        } else {
            memo.append(textField.text!)
            performSegue(withIdentifier: "gotoTransfer", sender: self)
        }
    }
    
   
}
