//
//  ViewController.swift
//  Day1Design
//
//  Created by MacStudent on 2018-02-20.
//  Copyright © 2018 Foram. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var txtEmail: UITextField!
    
    @IBOutlet weak var lblEmail: UILabel!
    
    @IBOutlet weak var btnLogin: UIButton!
    
    
    @IBAction func btnLoginAction(_ sender: UIButton) {
        var email = txtEmail.text!
        lblEmail.text = email
        var txtnumber = txtNumber.text!
        lblEmail.text = email + txtnumber
        
        let infoAlert = UIAlertController(title: "User Information", message: txtEmail.text!, preferredStyle: .actionSheet)
        
        infoAlert.addAction(UIAlertAction(title: "Login", style: .default, handler: nil))
        
        infoAlert.addAction(UIAlertAction(title: "Cancel", style: .default, handler: nil))
        
        //infoAlert.addAction(UIAlertAction(title: "Don't know", style: .default, handler: nil))
        self.present(infoAlert, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var txtNumber: UITextField!
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

