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


extension UIImage {
    func buffer(with size:CGSize) -> CVPixelBuffer? {
        if let image = self.cgImage {
            let frameSize = size
            var pixelBuffer:CVPixelBuffer? = nil
            let status = CVPixelBufferCreate(kCFAllocatorDefault, Int(frameSize.width), Int(frameSize.height), kCVPixelFormatType_32BGRA , nil, &pixelBuffer)
            if status != kCVReturnSuccess {
                return nil
            }
            CVPixelBufferLockBaseAddress(pixelBuffer!, CVPixelBufferLockFlags.init(rawValue: 0))
            let data = CVPixelBufferGetBaseAddress(pixelBuffer!)
            let rgbColorSpace = CGColorSpaceCreateDeviceRGB()
            let bitmapInfo = CGBitmapInfo(rawValue: CGBitmapInfo.byteOrder32Little.rawValue | CGImageAlphaInfo.premultipliedFirst.rawValue)
            let context = CGContext(data: data, width: Int(frameSize.width), height: Int(frameSize.height), bitsPerComponent: 8, bytesPerRow: CVPixelBufferGetBytesPerRow(pixelBuffer!), space: rgbColorSpace, bitmapInfo: bitmapInfo.rawValue)
            context?.draw(image, in: CGRect(x: 0, y: 0, width: image.width, height: image.height))
            CVPixelBufferUnlockBaseAddress(pixelBuffer!, CVPixelBufferLockFlags(rawValue: 0))
            
            return pixelBuffer
        }else{
            return nil
        }
    }
}


@available(iOS 11.0, *)
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
        for i in 0 ..< 3 {
            let result = i
            switch result {
            case 0: if(color[i] == "white") {arr1.append(Images[i])} else{ arr2.append(Images[i])}
            case 1: if(color[i] == "white") {arr3.append(Images[i])} else{ arr4.append(Images[i])}
            case 2: arr5.append(Images[i])
            case 3: arr6.append(Images[i])
            default:
                arr1.append(Images[i])
        }
            
        }
        performSegue(withIdentifier: "gotoResult", sender: self)
        
   }
    
    @IBAction func gotoAdd(_ sender: Any) {
        performSegue(withIdentifier: "gotoAdd", sender: self)
    }
    
}
