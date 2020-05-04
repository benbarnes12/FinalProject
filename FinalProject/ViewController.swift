//
//  ViewController.swift
//  FinalProject
//
//  Created by ben barnes on 5/4/20.
//  Copyright © 2020 ben barnes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var dollar: Double = 0
    var peso: Double = 0
    var yen: Double = 0
    var euro: Double = 0
    
    

    
    @IBOutlet weak var dollarAmountInput: UITextField!
    
    
    @IBOutlet weak var pesoCount: UILabel!
    
    
    @IBOutlet weak var yenCount: UILabel!
    
    
    
    @IBOutlet weak var euroCount: UILabel!
    
    
    @IBOutlet weak var pesoImage: UIImageView!
    
    @IBOutlet weak var yenImage: UIImageView!
    
    
    
    @IBOutlet weak var euroImage: UIImageView!
    
    
    @IBAction func recievedTap(_ sender: Any) {
        
        // show images
               pesoImage.isHidden = false
               yenImage.isHidden = false
               euroImage.isHidden = false
               
               // convert user input to double
               dollar = Double((dollarAmountInput.text! as NSString).integerValue)
               
               // calculate conversion
               peso = dollar * 24.79
               yen = dollar * 106.76
               euro = dollar * 0.91
              
               // send value to label
               pesoCount.text = String(peso)
               yenCount.text = String(yen)
               euroCount.text = String(euro)
        

        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // hide images
        pesoImage.isHidden = true
        yenImage.isHidden = true
        euroImage.isHidden = true

    }


}

