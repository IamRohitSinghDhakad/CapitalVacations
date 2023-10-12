//
//  ViewController.swift
//  CapitalVacation
//
//  Created by Rohit SIngh Dhakad on 26/09/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tfUserName: UITextField!
    @IBOutlet weak var tfPassword: UILabel!
    @IBOutlet weak var tfSuperVisor: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnOnLogin(_ sender: Any) {
        pushVc(viewConterlerId: "HomeViewController")
    }
    
    @IBAction func btnOnSuperVisorLogin(_ sender: Any) {
     
        if self.tfSuperVisor.text == "1Money"{
            pushVc(viewConterlerId: "HomeViewController")
        }else{
            objAlert.showAlert(message: "Please enter supervisor password", controller: self)
        }
    }
    
    @IBAction func btnOnBack(_ sender: Any) {
        onBackPressed()
    }
    
    
}

