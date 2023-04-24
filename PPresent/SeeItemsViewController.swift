//
//  SeeItemsViewController.swift
//  PPresent
//
//  Created by Daniel Vega on 2/9/23.
//

import UIKit

class SeeItemsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    

    @IBOutlet weak var tableViewOutlet: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewOutlet.delegate = self
        tableViewOutlet.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return StaticClass.items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        cell.textLabel?.text = StaticClass.items[indexPath.row]
        cell.textLabel?.font = UIFont.systemFont(ofSize: 30)
        
        return cell
    }

}
