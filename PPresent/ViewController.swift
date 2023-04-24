//
//  ViewController.swift
//  PPresent
//
//  Created by Daniel Vega on 12/25/22.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    

    @IBOutlet weak var collectionViewOutlet: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionViewOutlet.delegate = self
        collectionViewOutlet.dataSource = self
        StaticClass.imageArray.append("Airpods Maxes")
        StaticClass.imageArray.append("shoe")
        // Do any additional setup after loading the view.
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "theCell", for: indexPath) as! CustomCell
        if (indexPath.row < StaticClass.imageArray.count){
            
            cell.imageChange(i: StaticClass.imageArray[indexPath.row])
            cell.textChange(t: "\(StaticClass.imageArray[indexPath.row])")
    
        }
        else{
            cell.textChange(t: "Item \(indexPath.row + 1)")
        }
        cell.layer.cornerRadius = 50
        
        return cell
    }

    @IBAction func searchButton(_ sender: UIButton) {
        //reorganize the array of text labels, then rebuild the image array in the order of the text labels, the refresh the table data
    }
    

}

