//
//  ViewController.swift
//  vcTest
//
//  Created by 김민영 on 7/12/20.
//  Copyright © 2020 MINYOUNGKIM. All rights reserved.
//

import UIKit

class VC1: UIViewController {
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var isUpdate: UISwitch!
    @IBOutlet weak var interval: UIStepper!
    
    @IBOutlet weak var idUpdateText: UILabel!
    @IBOutlet weak var intervalText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("VC1 viewDidLoad call")
    }
    
    @IBAction func onSwitch(_ sender: UISwitch) {
        if sender.isOn == true {
            self.idUpdateText.text = "갱신함."
        } else {
            self.idUpdateText.text = "갱신하지 않음."
        }
    }
    
    @IBAction func onStepper(_ sender: UIStepper) {
        
        let val = Int(sender.value)
        
        self.intervalText.text = "\(val)분마다"
        
    }
    
    

    
    @IBAction func onSubmit(_ sender: Any) {
        
        guard let rvc = self.storyboard?.instantiateViewController(identifier: "VC2") as? VC2 else{
            return
        }
        
        rvc.paramEmail = self.email.text!
        rvc.paramUpdate = self.isUpdate.isOn
        rvc.paramInterval = self.interval.value
        
        self.present(rvc, animated: true)
        
        
        
    }
    
}

