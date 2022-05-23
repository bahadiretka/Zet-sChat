//
//  RegisterViewController.swift
//  Zet'sChat
//
//  Created by Bahadır Kılınç on 21.05.2022.
//

import UIKit
import Firebase

class RegisterViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    
    @IBAction func registerPressed(_ sender: UIButton) {
       
        if let email = emailTextfield.text, let password = passwordTextfield.text {
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                if let e = error {
                    self.goToView(with: e.localizedDescription)
                } else {
                    //Navigate to the ChatViewController
                    self.performSegue(withIdentifier: K.registerSegue, sender: self)
                }
            }
        }
    }
    @IBAction func goToView(with errorMessage: String?) {
        let secondVC = storyboard?.instantiateViewController(withIdentifier: K.errorViewController) as! ErrorViewController
        secondVC.error = errorMessage
        self.present(secondVC, animated:true, completion:nil)
    }
    
}

