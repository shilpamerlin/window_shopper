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
    
    override func prepareForInterfaceBuilder() {
        CustomizeField()
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        CustomizeField()
        
            //textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            
        }
        
        func CustomizeField (){
            backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
            layer.cornerRadius = 5.0
            textAlignment = .center
            
            if let p = placeholder  {
                
                let place = NSAttributedString(string: p, attributes: [NSAttributedStringKey.foregroundColor : #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
                attributedPlaceholder = place
                textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            
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
