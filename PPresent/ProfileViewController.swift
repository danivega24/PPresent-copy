//
//  ProfileViewController.swift
//  PPresent
//
//  Created by Daniel Vega on 1/25/23.
//

//
//  ViewController.swift
//  tableViewTester
//
//  Created by Daniel Vega on 1/31/23.
//

import UIKit

class ProfileViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    @IBOutlet weak var tableViewOutlet: UITableView!
    
    var user = Userclass(f: "default", l: "default", a: 18, g: "male", b: "testing")
    var sectionHeaders = ["first name", "last name", "age", "gender", "bio"]
    var populate = ["1","2","3"]
    var changeClicked = false
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewOutlet.tableHeaderView = createTableHeaderView()

        
        tableViewOutlet.delegate = self
        tableViewOutlet.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    @objc private func didTapChangeProfilePicture() {
        let actionSheet = UIAlertController(title: "Profile Picture", message: "Change Profile Picture", preferredStyle: .actionSheet)
        actionSheet.addAction(UIAlertAction(title: "Take Photo", style: .default, handler: { _ in
            
        }))
        actionSheet.addAction(UIAlertAction(title: "Choose From Library", style: .default, handler: { _ in
            
        }))
        actionSheet.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        
        actionSheet.popoverPresentationController?.sourceView = view
        actionSheet.popoverPresentationController?.sourceRect = view.bounds
        present(actionSheet, animated: true)
        
    }
    
    func createTableHeaderView() -> UIView {
        let header = UIView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height/3).integral)
        let size = header.frame.height/1.5
        let profilePhotoButton = UIButton(frame: CGRect(x: (view.frame.width-size)/2,
                                                        y: (header.frame.height-size)/2,
                                                        width: size,
                                                        height: size))
        header.addSubview(profilePhotoButton)
        profilePhotoButton.layer.masksToBounds = true
        profilePhotoButton.layer.cornerRadius = size/2.0
        
        
        profilePhotoButton.addTarget(self,
                                     action: #selector(didTapChangeProfilePicture),
                                     for: .touchUpInside)
        
        profilePhotoButton.setBackgroundImage(UIImage(systemName: "person.circle"), for: .normal)
        profilePhotoButton.layer.borderWidth = 1
        profilePhotoButton.layer.borderColor = UIColor.secondarySystemBackground.cgColor
        
        return header
    }
    
    func presentAlert() {
        var info = "info"
        let alertController = UIAlertController(title: "Edit", message: "Edit text", preferredStyle: .alert)
        alertController.addTextField { (textField) in
            textField.placeholder = "Enter Text"
            if textField.text != "Enter Text" {
                info = textField.text ?? "Alert Error"
            }
            else{
                info = "nothing entered"
            }
            
        }
        let change = UIAlertAction(title: "Change", style: .default) { [weak alertController] _ in guard let textFields = alertController?.textFields else { return }
                if let store = textFields[0].text
                {
                   self.user.firstName = store
                   print(store)
                   self.changeClicked = true
                }
            
            self.tableViewOutlet.reloadData()
            
        }
        let cancel = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        alertController.addAction(change)
        alertController.addAction(cancel)
        
        present(alertController, animated: true)
        
     
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sectionHeaders[section]
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //presentAlert()
        var info = "info"
        let alertController = UIAlertController(title: "Edit", message: "Edit text", preferredStyle: .alert)
        alertController.addTextField { (textField) in
            textField.placeholder = "Enter Text"
            if textField.text != "Enter Text" {
                info = textField.text ?? "Alert Error"
            }
            else{
                info = "nothing entered"
            }
            
        }
        let change = UIAlertAction(title: "Change", style: .default) { [weak alertController] _ in guard let textFields = alertController?.textFields else { return }
                if let store = textFields[0].text
                {
                   info = store
                   print(store)
                    switch indexPath.section {
                    case 0: self.user.firstName = info

                    case 1: self.user.lastName = info

                    case 2: self.user.age = Int(info) ?? 37707

                    case 3: self.user.gender = info

                    case 4: self.user.bio = info

                    default: self.user.firstName = "Switch Error"
                    }
                    
                }
            
            self.tableViewOutlet.reloadData()
            
        }
        let cancel = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        alertController.addAction(change)
        alertController.addAction(cancel)
        
        present(alertController, animated: true)
        //var replacement: String
        
        //replacement = presentAlert()
            
        

        
        
        tableView.reloadData()
        
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sectionHeaders.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        switch indexPath.section {
        case 0: cell.textLabel?.text = user.firstName
        
        case 1: cell.textLabel?.text = user.lastName
        
        case 2: cell.textLabel?.text = "\(user.age)"
        
        case 3: cell.textLabel?.text = user.gender
            
        case 4: cell.textLabel?.text = user.bio
            
        default: cell.textLabel?.text = "big L cuh"
        }
        
        return cell
    }

}


