//
//  ViewController.swift
//  FirstApp
//
//  Created by Artur Szatkowski on 24/10/2020.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var priceTxt: UITextField!
    @IBOutlet weak var salesTxt: UITextField!
    @IBOutlet weak var totalPriceLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        totalPriceLbl.text = "";
    }

    @IBAction func calculateTotalPrice(_ sender: Any) {
        let price = Double(priceTxt.text!)!;
        let salesTax = Double(salesTxt.text!)!;
        let totalSalesTax = price * salesTax;
        
        let totalPrice = price * totalSalesTax;
        totalPriceLbl.text = "$\(totalPrice)";
    }
    
}

