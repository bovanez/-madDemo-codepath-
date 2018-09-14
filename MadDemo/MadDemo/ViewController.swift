//
//  ViewController.swift
//  MadDemo
//
//  Created by Brian Ovanez on 9/14/18.
//  Copyright © 2018 codepath. All rights reserved.
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
        
        textLabel.textColor = UIColor.orange
    }
    
    @IBAction func didTapViewButton(_ sender: Any) {
        
        view.backgroundColor = UIColor.orange
    }
    
    
    @IBAction func didTapTextButton(_ sender: Any) {
        
        //textLabel.text = "Goodbye!"
        textLabel.text = textField.text
        textField.text = ""
        view.endEditing(true)
        
    }
    
    
    
    @IBAction func onResetGestur(_ sender: Any) {
        
        textLabel.text = "Hello!"
        view.backgroundColor = backgroundColor
        textLabel.textColor = UIColor.black
        
    }
    
    
    
}

