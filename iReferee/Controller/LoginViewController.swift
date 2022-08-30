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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print("Loaded Login")
        // Do any additional setup after loading the view.
    }

    @IBAction func signInButtonPressed(_ sender: UIButton) {
        authMetodChange(sender)
        
    }
    
    @IBAction func signUpButtonPressed(_ sender: UIButton) {
        authMetodChange(sender)
    }
    
    @IBAction func confirmButtonPressed(_ sender: UIButton) {
    }
    
    func authMetodChange(_ sender: UIButton){
        signInButton.titleLabel?.textColor = UIColor(named: "App TextField")
        signUpButton.titleLabel?.textColor = UIColor(named: "App TextField")
        sender.titleLabel?.textColor = UIColor(named: "App ContrastGrey")
        print(sender.titleLabel!)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
