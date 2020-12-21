//
//  VC3.swift
//  vcTest
//
//  Created by 김민영 on 7/12/20.
//  Copyright © 2020 MINYOUNGKIM. All rights reserved.
//

import Foundation
import UIKit

class VC3: UIViewController{
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var isUpdate: UISwitch!
    @IBOutlet weak var interval: UIStepper!
    @IBOutlet weak var isUpdateText: UILabel!
    @IBOutlet weak var intervalText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("VC3 viewDidLoad call")
    }
    @IBAction func isSwitch(_ sender: UISwitch) {
        if sender.isOn == true {
            self.isUpdateText.text = "갱신함."
        } else {
            self.isUpdateText.text = "갱신하지 않음."
        }
    }
    @IBAction func onStepper(_ sender: UIStepper) {
              let val = Int(sender.value)
          
          self.intervalText.text = "\(val)분마다"
    }
    
    @IBAction func onPerformSegue(_ sender : Any){
        
    }
    
    
}
