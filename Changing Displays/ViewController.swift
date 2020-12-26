//
//  ViewController.swift
//  Changing Displays
//
//  Created by Sydnee Tan on 12/26/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    var backgroundColor: UIColor!
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundColor = view.backgroundColor
        // Do any additional setup after loading the view.
    }

    @IBAction func tapTextColor(_ sender: Any) {
        textLabel.textColor = UIColor.orange
    }
    
    @IBAction func tapViewButton(_ sender: Any) {
        view.backgroundColor = UIColor.red
    }
    @IBAction func tapTextButton(_ sender: Any) {
        if textField.text == ""{
            textLabel.text = "Hello!"
        }else{
            textLabel.text = textField.text
            textField.text = ""
            view.endEditing(true)
        }
    }
    
    @IBAction func onResetGesture(_ sender: Any) {
        textLabel.text = "Hello!"
        view.backgroundColor = backgroundColor
        textLabel.textColor = UIColor.black
    }
}

