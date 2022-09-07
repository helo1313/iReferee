//
//  RegisterViewController.swift
//  iReferee
//
//  Created by Krzysztof Kowalski on 06/09/2022.
//

import UIKit
import Firebase

class RegisterViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func confirmButtonPressed(_ sender: UIButton) {
        
        let email = emailTextField.text ?? ""
        let password = passwordTextField.text ?? ""
        
        let isEmailValid = Validator.validateEmail(email)
        let isPasswordValid = Validator.validatePassword(password)
        
        if (isEmailValid && isPasswordValid){
            registerUser(email: email, password: password)
        } else {
            emailTextField.backgroundColor = isEmailValid ? UIColor(named: "App TextField") : UIColor(named: "App Error")
            passwordTextField.backgroundColor = isPasswordValid ? UIColor(named: "App TextField") : UIColor(named: "App Error")
        }
    }
    
    func registerUser(email: String, password: String){
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            if let e = error{
                print(e.localizedDescription)
            } else {
                // Register successful
                self.performSegue(withIdentifier: "registerSuccessful", sender: self)
            }
            
        }
    }
}
