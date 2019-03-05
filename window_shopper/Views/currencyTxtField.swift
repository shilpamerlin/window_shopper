//
//  currencyTxtField.swift
//  window_shopper
//
//  Created by Shilpa Joy on 2019-02-28.
//  Copyright © 2019 Shilpa Joy. All rights reserved.
//

import UIKit

@IBDesignable
class currencyTxtField: UITextField {
    
    override func draw(_ rect: CGRect) {
        let size : CGFloat = 20
        let currencyLbl = UILabel(frame : CGRect(x: 5, y: (frame.size.height/2) - size/2 , width: size, height: size))
        currencyLbl.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 0.6748983305)
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.8598030822)
        currencyLbl.layer.cornerRadius = 5.0
        currencyLbl.clipsToBounds = true
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        currencyLbl.text = formatter.currencySymbol
        addSubview(currencyLbl)
    }
    override func prepareForInterfaceBuilder() {
        CustomizeField()
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        CustomizeField()
        }
        
        func CustomizeField (){
            backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
            layer.cornerRadius = 5.0
            textAlignment = .center
            if let p = placeholder  {
                let place = NSAttributedString(string: p, attributes: [NSAttributedStringKey.foregroundColor : #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
                attributedPlaceholder = place
                textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
                clipsToBounds = true
                
            
        }
    }

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
