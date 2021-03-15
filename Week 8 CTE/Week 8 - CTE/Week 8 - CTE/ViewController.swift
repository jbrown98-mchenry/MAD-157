//
//  ViewController.swift
//  Week 8 - CTE
//
//  Created by Jim Brown on 3/14/21.
//  Copyright © 2021 Jim Brown. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBAction func enterWarranty(_ sender: Any) {
        let fm = FileManager.default
        let urls = fm.urls(for: .documentDirectory, in: .userDomainMask)
        let url = urls.last?.appendingPathComponent("file.text")
        do {
            try warantyEntry.text.write(to: url!, atomically: true, encoding: String.Encoding.utf8)
        } catch {
            print("Error writing file")
        }
        
    }
    
    @IBAction func deleteWarranty(_ sender: Any) {
        let fm = FileManager.default
        let urls = fm.urls(for: .documentDirectory, in: .userDomainMask)
        let url = urls.last?.appendingPathComponent("file.text")
        do {
            let fileContent = try String(contentsOf: url!, encoding: String.Encoding.utf8)
            warrantyRecord.text = fileContent
        } catch {
            print("Error writing file")
        }
        
    }
    

    @IBOutlet var warantyEntry: UITextView!
    
    @IBOutlet var warrantyRecord: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        warantyEntry.text = "Serial#  01/23/21     F NAME      L NAME  "
        warrantyRecord.text = ""
    }


}

