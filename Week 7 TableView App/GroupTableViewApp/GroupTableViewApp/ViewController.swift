//
//  ViewController.swift
//  GroupTableViewApp
//
//  Created by Jim Brown on 3/6/21.
//  Copyright © 2021 Jim Brown. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var petTable: UITableView!
    
    let petArray = [["DATABASE MANAGEMENT", "DBM-100     Intro to Databases", "DBM-110     SQL/Database Concepts"], ["DIGITAL MANAGEMENT", "DGM-107     Intro to Digital Legalities", "DGM-152     Interface Design", "DGM-153     Designing the User Experience", "DBM-265     Agile Project Management"], ["MOBILE APPLICATION DEVELOPMENT", "MAD-105     Programming for Android I", "MAD-107     Programming for iOS I", "MAD-155     Programming for Android II", "MAD-157     Programming for iOS II", "MAD-255     Programming for Android III", "MAD-257     Programming for iOS III"], ["PROGRAMMING", "PRG-105     Applied Logic"]]
    
    let cellID = "cellID"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        petTable.dataSource = self
        petTable.delegate = self
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return petArray[section].count - 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: cellID)
        if (cell == nil) {
            cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: cellID)
        }
        cell?.textLabel?.text = petArray[indexPath.section][indexPath.row + 1]
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedItem = petArray[indexPath.section][indexPath.row + 1]
        let alert = UIAlertController(title: "Your choice", message: "\(selectedItem)", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: { action -> Void in
        })
        alert.addAction(okAction)
        
        self.present(alert, animated: true, completion: nil)
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return petArray.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return petArray[section][0]
    }
    
}

