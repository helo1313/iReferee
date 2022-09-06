//
//  ViewController.swift
//  iReferee
//
//  Created by Krzysztof Kowalski on 25/08/2022.
//

import UIKit

class TitleViewController: UIViewController {

    var isExistingUser: Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    //Handle navigation to loading screen
    
    @IBAction func onLoginPressed(_ sender: Any) {
        moveToLoginScreen(true)
    }
    
    @IBAction func onRegisterPressed(_ sender: Any) {
        moveToLoginScreen(false)
    }
    
    func moveToLoginScreen(_ asNewUser: Bool){
        isExistingUser = asNewUser
        self.performSegue(withIdentifier: "moveToLogin", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationController = segue.destination as! LoginViewController
        destinationController.navigateAsSignIn = isExistingUser
    }
}

