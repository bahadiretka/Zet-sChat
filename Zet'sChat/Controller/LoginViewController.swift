//
//  LoginViewController.swift
//  Zet'sChat
//
//  Created by Bahadır Kılınç on 21.05.2022.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    @IBAction func loginPressed(_ sender: UIButton) {
        // sign in with using firebase
        if let email = emailTextfield.text, let password = passwordTextfield.text {
            Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
                if let e = error {
                    self.goToView(with: e.localizedDescription)
                } else {
                    self.performSegue(withIdentifier: K.loginSegue, sender: self)
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
