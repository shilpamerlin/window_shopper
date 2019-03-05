//
//  ViewController.swift
//  window_shopper
//
//  Created by Shilpa Joy on 2019-02-28.
//  Copyright © 2019 Shilpa Joy. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var wageTxt: currencyTxtField!
    @IBOutlet weak var priceTxt: currencyTxtField!
    @IBOutlet weak var hoursLbl: UILabel!
    @IBOutlet weak var resultLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let calculateBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 60))
        calculateBtn.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 0.9567369435)
        calculateBtn.setTitle("Calculate", for: .normal)
        calculateBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for:  .normal)
        calculateBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        wageTxt.inputAccessoryView = calculateBtn
        priceTxt.inputAccessoryView = calculateBtn
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
        
    }
    @objc func calculate(){
        if let wageTxt = wageTxt.text, let priceTxt = priceTxt.text{
            if let wage = Double(wageTxt), let price = Double(priceTxt){
                view.endEditing(true)
                resultLbl.isHidden = false
                hoursLbl.isHidden = false
                resultLbl.text = "\(Wage.getHours(forwage: wage, andPrice: price))"
            }
        }
        
    }
    
    @IBAction func clearCalculator(_ sender: Any) {
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
        wageTxt.text = ""
        priceTxt.text = ""
        
    }
    

    

}

