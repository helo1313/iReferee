//
//  LoginViewController.swift
//  iReferee
//
//  Created by Krzysztof Kowalski on 28/08/2022.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmButton: UIButton!
    
    var navigateAsSignIn: Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func signInButtonPressed(_ sender: UIButton) {
    }
    
    @IBAction func signUpButtonPressed(_ sender: UIButton) {
    }
}
