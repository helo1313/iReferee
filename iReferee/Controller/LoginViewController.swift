//
//  LoginViewController.swift
//  iReferee
//
//  Created by Krzysztof Kowalski on 28/08/2022.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var signInButton: UIButton!
    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmButton: UIButton!
    
    var navigateAsSignIn: Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()

        changeAuthMetod(navigateAsSignIn)
    }

    @IBAction func signInButtonPressed(_ sender: UIButton) {
        changeAuthMetod(sender)
        
    }
    
    @IBAction func signUpButtonPressed(_ sender: UIButton) {
        changeAuthMetod(sender)
    }
    
    @IBAction func confirmButtonPressed(_ sender: UIButton) {
    }
    
    func changeAuthMetod(_ sender: UIButton){
        signInButton.titleLabel?.textColor = UIColor(named: "App TextField")
        signUpButton.titleLabel?.textColor = UIColor(named: "App TextField")
        sender.titleLabel?.textColor = UIColor(named: "App ContrastGrey")
        
        confirmButton.titleLabel?.text = sender.titleLabel?.text == "Sign in" ? "Log in" : "Register"
    }
    
    func changeAuthMetod(_ isSignIn: Bool){
        signInButton.titleLabel?.textColor = isSignIn ? UIColor(named: "App ContrastGrey") : UIColor(named: "App TextField")
        signUpButton.titleLabel?.textColor = isSignIn ? UIColor(named: "App TextField") : UIColor(named: "App ContrastGrey")
        confirmButton.titleLabel?.text = isSignIn ? "Log in" : "Register"
    }

}
