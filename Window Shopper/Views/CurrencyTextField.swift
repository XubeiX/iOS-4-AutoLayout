//
//  CurrencyTextField.swift
//  Window Shopper
//
//  Created by Artur on 14/10/2018.
//  Copyright © 2018 Artur. All rights reserved.
//

import UIKit

@IBDesignable
class CurrencyTextField: UITextField {

    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    
    override func draw(_ rect: CGRect) {
        let size: CGFloat = 20
        let currencyLbl = UILabel(frame: CGRect(x: 5, y: ( frame.size.height / 2 ) - size / 2, width: size, height: size))
        currencyLbl.backgroundColor = #colorLiteral(red: 0.869911428, green: 0.869911428, blue: 0.869911428, alpha: 0.801369863)
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        currencyLbl.layer.cornerRadius = 5.0
        currencyLbl.clipsToBounds = true
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        currencyLbl.text = formatter.currencySymbol
        addSubview(currencyLbl)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    }
    
    func customizeView()
    {
        self.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        self.layer.cornerRadius = 5.0
        self.textAlignment = .center
        self.clipsToBounds = true
        
        if let tempPlaceHolder = placeholder {
            let place = NSAttributedString(string: tempPlaceHolder, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            
            self.attributedPlaceholder = place
            self.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
}
