//
//  ViewController.swift
//  MadDemoProject
//
//  Created by Wine Mom Martha on 9/23/18.
//  Copyright © 2018 a&t. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    
    var backgroundColor: UIColor!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        
        backgroundColor = view.backgroundColor
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func didTapButton(_ sender: Any) {
        print("Hello")
        textLabel.textColor = UIColor(red:0.94, green:0.33, blue: 0.62, alpha: 1.0)
    }
    
    @IBAction func didTapViewButton(_ sender: Any) {
        view.backgroundColor = UIColor(red:0.99, green:0.71, blue: 0.80, alpha: 1.0)
    }
    
    @IBAction func didTapTextButton(_ sender: Any) {
        
        //textLabel.text = "Goodbye!"
        if(textField.text?.isEmpty ?? true)
        {
            textLabel.text = "Goodbye! 👋"
        }
        else
        {
            textLabel.text = textField.text
            textField.text = ""
        }
        
        view.endEditing(true)
        
    }
    
    
    @IBAction func onResetGesture(_ sender: Any) {
        textLabel.text = "Hello from Thandi !"
        textLabel.textColor = UIColor.black
        view.backgroundColor = backgroundColor
    }
    
}

