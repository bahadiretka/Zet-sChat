//
//  ErrorViewController.swift
//  Zet'sChat
//
//  Created by Bahadır Kılınç on 22.05.2022.
//

import UIKit

class ErrorViewController: UIViewController {

    @IBOutlet weak var errorLabel: UILabel!
    var error: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        if let e = error{
            errorLabel.text = e
        }
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
}
