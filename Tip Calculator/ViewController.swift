//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Armstrong, Eli on 1/19/22.
//  Copyright © 2022 Armstrong, Eli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipAmountLbl: UILabel!
    @IBOutlet weak var totalAmountLbl: UILabel!
    @IBOutlet weak var segmentControl: UISegmentedControl!
    @IBOutlet weak var billAmountTF: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTipChange(_ sender: Any) {
        calulateTip()
    }
    
    
    @IBAction func onBillChange(_ sender: UITextField) {
        calulateTip()
    }
    
    func calulateTip(){
        let bill = Double(billAmountTF.text!) ?? 0
        let tipPercentages = [0.15, 0.18, 0.2]
        
        let tip = bill * tipPercentages[segmentControl.selectedSegmentIndex]
        
        let total = bill + tip
        
        tipAmountLbl.text = String(format: "$%.2f", tip)
        totalAmountLbl.text = String(format: "$%.2f", total)
    }
}

