//
//  CameraModeInit.swift
//  psps
//
//  Created by capstone1_7 on 2018. 5. 17..
//  Copyright © 2018년 capstone2. All rights reserved.
//

import UIKit
import MobileCoreServices

var memo: Array<String> = []
var Images: Array<UIImage> = []
var color: Array<String> = []

class CameraModeInit: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var imageView: UIImageView!
  
    let imagePicker: UIImagePickerController! = UIImagePickerController()
    var captureImage: UIImage!
    var flagImageSave = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    
    @IBAction func BackToMain(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    

    
    @IBAction func cameraClicked(_ sender: UIButton) {
        if(UIImagePickerController.isSourceTypeAvailable(.camera)){
            flagImageSave = false
            imagePicker.delegate = self
            imagePicker.sourceType = .camera
            imagePicker.mediaTypes = [kUTTypeImage as String]
            imagePicker.allowsEditing = false
            present(imagePicker, animated: true, completion: nil)
        }
        else{
            //alert message
        }
    }
    
    public func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        let mediaType = info[UIImagePickerControllerMediaType] as! NSString
        //print(mediaType)
        
        if mediaType.isEqual(to: kUTTypeImage as NSString as String) {
            captureImage = info[UIImagePickerControllerOriginalImage] as! UIImage
            
            if flagImageSave {
                UIImageWriteToSavedPhotosAlbum(captureImage, self, nil, nil)
            }
            
            imageView.image = captureImage
            Images.append(captureImage)
        }
        self.dismiss(animated: true, completion: nil)
    }
    
    public func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func memoTapped(_ sender: Any) {
        performSegue(withIdentifier: "gotoMemo", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let memoViewController = segue.destination as! AddMemo
        memoViewController.SelectedImage = captureImage
    }
    
}
