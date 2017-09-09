//
//  ViewController.swift
//  MyCollectionViewDemo
//
//  Created by DILIP KUMAR GUPTA on 09/09/17.
//  Copyright © 2017 Dilip Kumar Gupta. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet var myCollectionView: UICollectionView!
    
    var natureImages = ["nature", "nature1", "nature2", "nature3", "nature4", "nature5", "nature6", "nature7", "nature8", "nature", "nature1", "nature2", "nature3", "nature4"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myCollectionView.delegate = self
        myCollectionView.dataSource  = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return natureImages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionCell", for: indexPath) as! MyCollectionViewCell
        cell.imgMyImage.image = UIImage(named: natureImages[indexPath.row])
        cell.imgMyImage.setRounded()
        return cell
    }
    
   }

extension UIImageView {
    
    func setRounded() {
        self.layer.cornerRadius = (self.frame.width / 2)
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.blue.cgColor
        self.layer.masksToBounds = true
        
    }
}
