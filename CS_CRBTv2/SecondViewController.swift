//
//  SecondViewController.swift
//  CS_CRBTv2
//
//  Created by Timmy Tseng on 5/14/18.
//  Copyright © 2018 Timmy Tseng. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    let race = ["Kachin Tunes", "Kayah Tunes", "Karen Tunes", "Chin Tunes", "Burmese Tunes", "Mon Tunes", "Rakhine Tunes", "Shan Tunes"]
    let raceB = ["ကချင်တီးလုံး", "ကယားတီးလုံး", "ကရင်တီးလုံး", "ချင်းတီးလုံး", "မြန်မာတီးလုံး", "မွန်တီးလုံး", "ရခိုင်တီးလုံး", "ရှမ်းတီးလုံး"]
    
    let raceImage = [UIImage(named: "Kachin"), UIImage(named: "Kayah"), UIImage(named: "Karen"), UIImage(named: "Chin"), UIImage(named: "Burmese"), UIImage(named: "Mon"), UIImage(named: "Rakhine"), UIImage(named: "Shan")]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return race.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        
        cell.race.text = race[indexPath.row]
        cell.raceB.text = raceB[indexPath.row]
        cell.raceImage.image = raceImage[indexPath.row]
        
        return cell
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}

