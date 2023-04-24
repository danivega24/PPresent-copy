//
//  TableCell.swift
//  PPresent
//
//  Created by Daniel Vega on 1/25/23.
//

import Foundation
import UIKit

public class TableCell: UITableViewCell{
    
    @IBOutlet weak var imageOutlet: UIImageView!
    @IBOutlet weak var nameTextOutlet: UILabel!
    @IBOutlet weak var itemsTextOutlet: UILabel!
    
    func imageChange(i: String) {
        //imageOutlet.image = UIImage(named: i)
    }
    func textChange(t: String){
    nameTextOutlet.text = t
    }
    
}
