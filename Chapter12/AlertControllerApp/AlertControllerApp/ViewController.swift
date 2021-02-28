//
//  ViewController.swift
//  AlertControllerApp
//
//  Created by Jim Brown on 2/28/21.
//  Copyright © 2021 Jim Brown. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        let alert = UIAlertController(title: "Warning", message: "Machine has been stopped", preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK", style: .default, handler: { action -> Void in
            //Just dimiss the action sheet
        })
        alert.addAction(okAction)
        
        self.present(alert, animated: true, completion: nil)
    }
    
}

