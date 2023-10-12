//
//  HomeViewController.swift
//  CapitalVacation
//
//  Created by Rohit SIngh Dhakad on 27/09/23.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var vwPopUp: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.vwPopUp.isHidden = true
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnOnDestinality(_ sender: Any) {
        self.vwPopUp.isHidden = false
    }
    
    @IBAction func btnOnFinancialObligation(_ sender: Any) {
        pushVc(viewConterlerId: "FinancialObligationViewController")
    }

    @IBAction func btnOk(_ sender: Any) {
        self.vwPopUp.isHidden = true
    }
    
    @IBAction func btnOnBack(_ sender: Any) {
        onBackPressed()
    }
    
    @IBAction func btnRedirectToCapitalVacation(_ sender: Any) {
        if let url = URL(string: "https://capitalvacations.com/") {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
        
    }
}
