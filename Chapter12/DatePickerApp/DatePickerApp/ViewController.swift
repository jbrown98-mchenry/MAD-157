//
//  ViewController.swift
//  DatePickerApp
//
//  Created by Jim Brown on 2/28/21.
//  Copyright © 2021 Jim Brown. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var myDatePicker: UIDatePicker!
    
    let dateFormatter: DateFormatter = DateFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dateFormatter.dateStyle = .short
        dateFormatter.timeStyle = .short
    }
    
    func ShowAlert(dateTime : String) {
        let alert = UIAlertController(title: "Selected Date and Time", message: "\(dateTime)", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: { action -> Void in
                //Just dismiss the action sheet
        })
        alert.addAction(okAction)
            
        self.present(alert, animated: true, completion: nil)
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func dateChanged(_ sender: UIDatePicker) {
        let selectedDate: String = dateFormatter.string(from: sender.date)
        ShowAlert(dateTime: selectedDate)
    }
    
    @IBAction func getCurrentDateTime(_ sender: UIButton) {
        let selectedDate: String = dateFormatter.string(from: myDatePicker.date)
        ShowAlert(dateTime: selectedDate)
    }
    

}

