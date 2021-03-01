//
//  ViewController.swift
//  MiniApp-Week6
//
//  Created by Jim Brown on 2/28/21.
//  Copyright © 2021 Jim Brown. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var labelResult: UILabel!
    @IBOutlet var rateLabelResult: UILabel!
    @IBOutlet var myDatePicker: UIDatePicker!
    @IBOutlet var dateTimeText: UITextField!
    
    let dateFormatter: DateFormatter = DateFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelResult.numberOfLines = 0
        rateLabelResult.numberOfLines = 0
        dateFormatter.dateStyle = .short
        dateFormatter.timeStyle = .short
        // Do any additional setup after loading the view.
    }
    func ShowAlert(dateTime : String) {
        let alert = UIAlertController(title: "Selected Date and Time", message: "\(dateTime)", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: { action -> Void in
            //Just dismiss the action sheet
        })
        alert.addAction(okAction)
        
        self.present(alert, animated: true, completion: nil)
    }

    @IBAction func backButton(_ sender: UIButton) {
        let alert = UIAlertController(title: "Warning", message: "You can't go back!", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: { action -> Void in
            //Just dismiss the action sheet
        })
        alert.addAction(okAction)
        
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func saveButton(_ sender: UIButton) {
        let alert = UIAlertController(title: "Save File", message: "Enter File Name", preferredStyle: .alert)
        
        alert.addTextField(configurationHandler: {(textField) in
            textField.placeholder = "File name here"
            textField.isSecureTextEntry = false
        })
        
        let okAction = UIAlertAction(title: "OK", style: .default, handler: { action -> Void in
            let savedText = alert.textFields![0] as UITextField
            self.labelResult.text = savedText.text
        })
        alert.addAction(okAction)
        
        self.present(alert, animated: true, completion: nil)
    }

    @IBAction func rateButton(_ sender: UIButton) {
        let alert = UIAlertController(title: "Rate this App", message: "Choose your rating", preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "Awesome", style: .default, handler: { action -> Void in
            self.rateLabelResult.text = "Awesome"
        })
        let cancelAction = UIAlertAction(title: "So So", style: .cancel, handler: { action -> Void in
            self.rateLabelResult.text = "So So"
        })
        let destroyAction = UIAlertAction(title: "Not good", style: .destructive, handler: { action -> Void in
            self.rateLabelResult.text = "Not good"
        })
        alert.addAction(okAction)
        alert.addAction(cancelAction)
        alert.addAction(destroyAction)
        
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func getCurrentDateTime(_ sender: UIButton) {
        let selectedDate: String = dateFormatter.string(from: myDatePicker.date)
        ShowAlert(dateTime: selectedDate)
    }
    @IBAction func dateChanged(_ sender: UIDatePicker) {
        let selectedDate: String = dateFormatter.string(from: sender.date)
        ShowAlert(dateTime: selectedDate)
        dateTimeText.text = selectedDate
    }
}

