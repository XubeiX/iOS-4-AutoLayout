//
//  ViewController.swift
//  Window Shopper
//
//  Created by Artur on 14/10/2018.
//  Copyright © 2018 Artur. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    
    @IBOutlet weak var wageTxt: CurrencyTextField!
    @IBOutlet weak var priceTxt: CurrencyTextField!
    @IBOutlet weak var resoultLbl: UILabel!
    @IBOutlet weak var hoursLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calculateButton = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 65))
        calculateButton.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        calculateButton.setTitle("Calculate", for: .normal)
        calculateButton.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calculateButton.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        wageTxt.inputAccessoryView = calculateButton
        priceTxt.inputAccessoryView = calculateButton
        
        resoultLbl.isHidden = true
        hoursLbl.isHidden = true
    }
    
    @objc func calculate(){
        if let wageTxt = wageTxt.text, let priceTxt = priceTxt.text {
            if let wage = Double(wageTxt), let price = Double(priceTxt) {
                view.endEditing(true)
                resoultLbl.isHidden = false
                hoursLbl.isHidden = false
                resoultLbl.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
            }
        }
    }

    @IBAction func clearCalculatorPressed(_ sender: Any) {
        resoultLbl.isHidden = true
        hoursLbl.isHidden = true
        wageTxt.text = ""
        priceTxt.text = ""
    }
    
}

