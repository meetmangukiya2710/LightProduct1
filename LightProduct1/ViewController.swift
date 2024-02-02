//
//  ViewController.swift
//  LightProduct1
//
//  Created by R95 on 22/12/23.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    

    @IBOutlet weak var ProductListOutlet: UICollectionView!
    
    var imagename1 = ["lamp1","lamp2","lamp3","lamp4","lamp5","lamp6","lamp7","lamp8","lamp9","lamp10","lamp11","lamp12","lamp13"]
    
    var ProductDetail1 = ["Voroly Wood Oval Table Lamp,White ₹1,664 M.R.P: ₹2,999(45%off)","Hopdezyo Antique Nautical Wooden Tripod Adjustable Floor Lamp for Living Room, Home Decoration, Pack of Lamp in Jute Shade ₹1,090 M.R.P: ₹1,799 (39% off)","Craftter Premium Sconces Wooden Base Fabric Shade Round Wall Lamp for Home Decoration ₹999 M.R.P: ₹3,331 (70% off)","Divine Trends Modern Table Shelf Floor Lamp Standing Brass Antique Gold 5ft Height 10 Inches Shelf Diameter ₹6,850 M.R.P: ₹11,500 (40% off)","Crosscut Furniture Metal Floor Lamp with Decorative Shelf (Cotton White, Pack of 1) ₹1,499 M.R.P: ₹4,990 (70% off)","Homesake Wall Light Antique Home Decor Wall Lamp, Mandir Balcony Decoration Items Outdoor ₹849 M.R.P: ₹3,300 (74% off)","ABOUT SPACE Table Lamp - Bedside Side Table Lamp with Wooden Base for Night Reading,Bed Room ₹1,459 M.R.P: ₹1,699 (14% off)","Crosscut Furniture Metal Floor Lamp with 3 Shelves (Fresh Flower) ₹1,799 M.R.P: ₹4,990 (64% off)","Homesake® Rustic Algae French Trophy Carved Table lamp with Shade,able Lamp, Night Lamp Home ₹1,394 M.R.P: ₹5,000 (72% off)","Homesake Hanging Light Diamond Cluster, Ceiling Lights for Home Decoration, Pendant Light Living Room ₹850 M.R.P: ₹3,500 (76% off)","Homesake® Lamp, Table Lamp, Night Lamp for Bedroom, Home Decor Items, Lamp for Living Room ₹849 M.R.P: ₹3,000 (72% off)","XERGY Crystal Table Lamp,3 Color,Touch Control and USB Rechargeable,3-Levels Brightness Room Décor ₹799 M.R.P: ₹999 (20% off)","ExclusiveLane Sheesham Wooden 'Pyramid' Table Lamp for Bedroom & Living Room ₹1,224 M.R.P: ₹2,415 (49% off)"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imagename1.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = ProductListOutlet.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! ProductCollectionViewCell
        
        cell.ImageOutlet.image = UIImage(named: imagename1[indexPath.row])
        cell.ProductOutlet.text = ProductDetail1[indexPath.row]
        
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 236, height: 396)
    }
}

