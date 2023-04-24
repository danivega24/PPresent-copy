//
//  WishListViewController.swift
//  PPresent
//
//  Created by Daniel Vega on 1/8/23.
//

import UIKit

class WishListViewController: UIViewController,  UITableViewDelegate, UITableViewDataSource {
    
    

    @IBOutlet weak var tableViewOutlet: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewOutlet.delegate = self
        tableViewOutlet.dataSource = self
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return StaticClass.friendNamesArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableViewOutlet.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! TableCell
        cell.textChange(t: StaticClass.friendNamesArray[indexPath.row])
        //cell.textLabel?.text = "friend \(indexPath.row + 1)"
        //cell.layer.cornerRadius = 25
        cell.layer.borderColor = CGColor(red: 255, green: 255, blue: 255, alpha: 1)
        cell.layer.borderWidth = 5
        return cell
    }

    

}
