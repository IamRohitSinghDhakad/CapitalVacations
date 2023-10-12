//
//  FinancialObligationViewController.swift
//  CapitalVacation
//
//  Created by Rohit SIngh Dhakad on 28/09/23.
//

import UIKit

class FinancialObligationViewController: UIViewController {
    
    @IBOutlet weak var tfDateOfPurchase: UITextField!
    @IBOutlet weak var tfAccountFlagged: UITextField!
    @IBOutlet weak var tfMaintenanceFee: UITextField!
    @IBOutlet weak var tfAnnualRate: UITextField!
    @IBOutlet weak var tf10YearProjection: UITextField!
    @IBOutlet weak var tfAnnualRateSpecialAssestments: UITextField!
    @IBOutlet weak var tf10YearSpclAssestments: UITextField!
    @IBOutlet weak var tfLoanPayment: UITextField!
    @IBOutlet weak var tfRate: UITextField!
    @IBOutlet weak var tfTerm: UITextField!
    @IBOutlet weak var tfFinancial10Year: UITextField!
    @IBOutlet weak var tfFinancial20Year: UITextField!
    @IBOutlet weak var tfinancial30Year: UITextField!
    @IBOutlet weak var tfLoanCost: UITextField!
    
    var textFields: [UITextField]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set up delegates for text fields to respond to text changes
        tfDateOfPurchase.delegate = self
        tfAccountFlagged.delegate = self
        tfMaintenanceFee.delegate = self
        tfAnnualRate.delegate = self
        tf10YearProjection.delegate = self
        tfAnnualRateSpecialAssestments.delegate = self
        tf10YearSpclAssestments.delegate = self
        tfLoanPayment.delegate = self
        tfRate.delegate = self
        tfTerm.delegate = self
        tfFinancial10Year.delegate = self
        tfFinancial20Year.delegate = self
        tfinancial30Year.delegate = self
        tfLoanCost.delegate = self
        
        // Load saved text for each text field
        loadTextFields()
        
    }
    
    func loadTextFields() {
        // Load and set text for each text field from UserDefaults
        tfDateOfPurchase.text = UserDefaults.standard.string(forKey: "DateOfPurchase")
        tfAccountFlagged.text = UserDefaults.standard.string(forKey: "AccountFlagged")
        tfMaintenanceFee.text = UserDefaults.standard.string(forKey: "MaintenanceFee")
        tfAnnualRate.text = UserDefaults.standard.string(forKey: "AnnualRate")
        tf10YearProjection.text = UserDefaults.standard.string(forKey: "10YearProjection")
        tfAnnualRateSpecialAssestments.text = UserDefaults.standard.string(forKey: "AnnualRateSpecialAssestments")
        tf10YearSpclAssestments.text = UserDefaults.standard.string(forKey: "10YearSpclAssestments")
        tfLoanPayment.text = UserDefaults.standard.string(forKey: "LoanPayment")
        tfRate.text = UserDefaults.standard.string(forKey: "Rate")
        tfTerm.text = UserDefaults.standard.string(forKey: "Term")
        tfFinancial10Year.text = UserDefaults.standard.string(forKey: "Financial10Year")
        tfFinancial20Year.text = UserDefaults.standard.string(forKey: "Financial20Year")
        tfinancial30Year.text = UserDefaults.standard.string(forKey: "Financial30Year")
        tfLoanCost.text = UserDefaults.standard.string(forKey: "LoanCost")
    }
    
    func saveTextFields() {
        // Save text for each text field to UserDefaults
        UserDefaults.standard.set(tfDateOfPurchase.text, forKey: "DateOfPurchase")
        UserDefaults.standard.set(tfAccountFlagged.text, forKey: "AccountFlagged")
        UserDefaults.standard.set(tfMaintenanceFee.text, forKey: "MaintenanceFee")
        UserDefaults.standard.set(tfAnnualRate.text, forKey: "AnnualRate")
        UserDefaults.standard.set(tf10YearProjection.text, forKey: "10YearProjection")
        UserDefaults.standard.set(tfAnnualRateSpecialAssestments.text, forKey: "AnnualRateSpecialAssestments")
        UserDefaults.standard.set(tf10YearSpclAssestments.text, forKey: "10YearSpclAssestments")
        UserDefaults.standard.set(tfLoanPayment.text, forKey: "LoanPayment")
        UserDefaults.standard.set(tfRate.text, forKey: "Rate")
        UserDefaults.standard.set(tfTerm.text, forKey: "Term")
        UserDefaults.standard.set(tfFinancial10Year.text, forKey: "Financial10Year")
        UserDefaults.standard.set(tfFinancial20Year.text, forKey: "Financial20Year")
        UserDefaults.standard.set(tfinancial30Year.text, forKey: "Financial30Year")
        UserDefaults.standard.set(tfLoanCost.text, forKey: "LoanCost")
    }
    
    
    @IBAction func btnOnBack(_ sender: Any) {
        saveTextFields()
        onBackPressed()
    }
    
}

extension FinancialObligationViewController {
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if let text = textField.text, !text.isEmpty {
            switch textField {
            case tfDateOfPurchase:
                UserDefaults.standard.set(text, forKey: "DateOfPurchase")
            case tfAccountFlagged:
                UserDefaults.standard.set(text, forKey: "AccountFlagged")
            case tfMaintenanceFee:
                UserDefaults.standard.set(text, forKey: "MaintenanceFee")
            case tfAnnualRate:
                UserDefaults.standard.set(text, forKey: "AnnualRate")
            case tf10YearProjection:
                UserDefaults.standard.set(text, forKey: "10YearProjection")
            case tfAnnualRateSpecialAssestments:
                UserDefaults.standard.set(text, forKey: "AnnualRateSpecialAssestments")
            case tf10YearSpclAssestments:
                UserDefaults.standard.set(text, forKey: "10YearSpclAssestments")
            case tfLoanPayment:
                UserDefaults.standard.set(text, forKey: "LoanPayment")
            case tfRate:
                UserDefaults.standard.set(text, forKey: "Rate")
            case tfTerm:
                UserDefaults.standard.set(text, forKey: "Term")
            case tfFinancial10Year:
                UserDefaults.standard.set(text, forKey: "Financial10Year")
            case tfFinancial20Year:
                UserDefaults.standard.set(text, forKey: "Financial20Year")
            case tfinancial30Year:
                UserDefaults.standard.set(text, forKey: "Financial30Year")
            case tfLoanCost:
                UserDefaults.standard.set(text, forKey: "LoanCost")
            default:
                break
            }
        }
    }
}
