//
//  LoginViewController.swift
//  iReferee
//
//  Created by Krzysztof Kowalski on 28/08/2022.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmButton: UIButton!
    
    var navigateAsSignIn: Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func confirmButtonPressed(_ sender: UIButton) {
    
        if let email = emailTextField.text, let password = passwordTextField.text{
            Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
                if let e = error{
                    print(e.localizedDescription)
                } else {
                    self.performSegue(withIdentifier: "loginSuccessful", sender: self)
                }
            }
        }
    }
}
