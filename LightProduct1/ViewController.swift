//
//  ViewController.swift
//  LightProduct1
//
//  Created by R95 on 22/12/23.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    

    @IBOutlet weak var ProductListOutlet: UICollectionView!
    
    var imageName = ["lamp1","lamp2","lamp3","lamp4","lamp5","lamp6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageName.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = ProductListOutlet.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! ProductCollectionViewCell
        
        cell.ImageOutlet.image = UIImage(named: imageName[indexPath.row])
        cell.ProductOutlet.text = imageName[indexPath.row]
        
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 163, height: 262)
    }
}

