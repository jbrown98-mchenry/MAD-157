//
//  ViewController.swift
//  Tic Tac Toe
//
//  Created by Jim Brown on 2/7/21.
//  Copyright © 2021 Jim Brown. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var RTbox: UILabel!
    @IBOutlet weak var RMbox: UILabel!
    @IBOutlet weak var RLbox: UILabel!
    @IBOutlet var MTbox: UILabel!
    @IBOutlet var MMbox: UILabel!
    @IBOutlet var MLbox: UILabel!
    @IBOutlet var LTbox: UILabel!
    @IBOutlet var LMbox: UILabel!
    @IBOutlet var LLbox: UILabel!
    
    @IBOutlet var RTtext: UITextField!
    @IBOutlet var RMtext: UITextField!
    @IBOutlet var RLtext: UITextField!
    @IBOutlet var MTtext: UITextField!
    @IBOutlet var MMtext: UITextField!
    @IBOutlet var MLtext: UITextField!
    @IBOutlet var LTtext: UITextField!
    @IBOutlet var LMtext: UITextField!
    @IBOutlet var LLtext: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func RTbutton(_ sender: UIButton) {
        RTbox.text = RTtext.text
        RMbox.text = RMtext.text
        RLbox.text = RLtext.text
        MTbox.text = MTtext.text
        MMbox.text = MMtext.text
        MLbox.text = MLtext.text
        LTbox.text = LTtext.text
        LMbox.text = LMtext.text
        LLbox.text = LLtext.text
    }
    
    @IBAction func clearButton(_ sender: UIButton) {
        //Right side text
        RTbox.text = ""
        RTtext.text = ""
        RMbox.text = ""
        RMtext.text = ""
        RLbox.text = ""
        RLtext.text = ""
        // Middle text
        MTbox.text = ""
        MTtext.text = ""
        MMbox.text = ""
        MMtext.text = ""
        MLbox.text = ""
        MLtext.text = ""
        //Left side text
        LTbox.text = ""
        LTtext.text = ""
        LMbox.text = ""
        LMtext.text = ""
        LLbox.text = ""
        LLtext.text = ""
    }
    
    
    
}

