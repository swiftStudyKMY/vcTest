//
//  VC2.swift
//  vcTest
//
//  Created by 김민영 on 7/12/20.
//  Copyright © 2020 MINYOUNGKIM. All rights reserved.
//

import Foundation
import UIKit

class VC2: UIViewController{
    @IBOutlet weak var resEmail: UILabel!
    @IBOutlet weak var resUpdate: UILabel!
    @IBOutlet weak var resInterval: UILabel!
    
    
    var paramEmail : String = ""
    
    var paramUpdate : Bool = false
    
    var paramInterval : Double = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("VC2 viewDidLoad call")
        
        self.resEmail.text = paramEmail
        self.resUpdate.text = (self.paramUpdate == true) ? "자동갱신" : "자동갱신안함"
        
        self.resInterval.text = "\(Int(paramInterval))분마다 갱신"
        
    }
    
    @IBAction func back(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}
