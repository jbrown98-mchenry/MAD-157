//
//  ViewController.swift
//  CarApp2
//
//  Created by Jim Brown on 2/14/21.
//  Copyright © 2021 Jim Brown. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var modelText: UITextField!
    @IBOutlet var colorText: UITextField!
    @IBOutlet var engineText: UITextField!
    @IBOutlet var rimsText: UITextField!
    @IBOutlet var contactText: UITextField!
    @IBOutlet var submitText: UILabel!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
 // Model Choice Section
    @IBAction func ninetyButton(_ sender: UIButton) {
        modelText.text = "Defender 90"
    }
    @IBAction func onetenButton(_ sender: UIButton) {
        modelText.text = "Defender 110"
    }
 // Color Choice Section
    @IBAction func greenButton(_ sender: UIButton) {
        colorText.text = "Green"
    }
    @IBAction func whiteButton(_ sender: UIButton) {
        colorText.text = "White"
    }
    @IBAction func redButton(_ sender: UIButton) {
        colorText.text = "Red"
    }
    @IBAction func blackButton(_ sender: UIButton) {
        colorText.text = "Black"
    }
 // Engine Choice Section
    @IBAction func dieselButton(_ sender: UIButton) {
        engineText.text = "Diesel"
    }
    @IBAction func turboButton(_ sender: UIButton) {
        engineText.text = "Turbo Diesel"
    }
//Rims Choice Section
    @IBAction func factoryButton(_ sender: UIButton) {
        rimsText.text = "Factory (Plain)"
    }
    @IBAction func alloyButton(_ sender: UIButton) {
        rimsText.text = "Alloy"
    }
 // Submit Info & Clear Section
    @IBAction func submitButton(_ sender: UIButton) {
        submitText.text = "Thanks, we will be in contact with you!"
        modelText.text = " "
        colorText.text = " "
        engineText.text = " "
        rimsText.text = " "
        contactText.text = " "
    }
    
}

