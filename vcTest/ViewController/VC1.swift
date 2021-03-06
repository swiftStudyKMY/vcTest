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
    @IBAction func moveToVc4(_ sender: Any) {
        
        let storyBoard : UIStoryboard = self.storyboard!
        
        let nextSB = storyBoard.instantiateViewController(identifier: "VC4")
        
        self.present(nextSB, animated: true, completion: nil)
        
        
    }
    @IBAction func moveToVc5(_ sender: Any) {
        let story : UIStoryboard = UIStoryboard(name: "next", bundle: nil)
        
        let nextVc = story.instantiateInitialViewController()
        
//        let nextVc = story.instantiateInitialViewController()
//        let nextVc = story.instantiateViewController(identifier: "VC5")

        self.present(nextVc!, animated: true, completion: nil)
    
        
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
    
    @IBAction func onSubmitNavi(_ sender: Any) {
        guard let rvc = self.storyboard?.instantiateViewController(identifier: "VC2") as? VC2 else{
            return
        }
        
        rvc.paramEmail = self.email.text!
        rvc.paramUpdate = self.isUpdate.isOn
        rvc.paramInterval = self.interval.value
        
        self.navigationController?.pushViewController(rvc, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let dest = segue.destination
        
        guard let rvc = dest as? VC2 else{
            return
        }
        
        rvc.paramEmail = self.email.text!
        rvc.paramUpdate = self.isUpdate.isOn
        rvc.paramInterval = self.interval.value
        
    }
    
    @IBAction func onPerformSegue (_ sender : Any){
        self.performSegue(withIdentifier: "VC2", sender: self)
    }
    
}

