//
//  ViewController.swift
//  AlertApp
//
//  Created by ahmetburakozturk on 7.04.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var password2TextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var usernameTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func signUpButtonClicked(_ sender: Any) {
        
        if usernameTextField.text == nil || usernameTextField.text == "" {
            makeAlert(title: "Error", message: "Please enter a valid username!")
        }else if passwordTextField.text == nil || passwordTextField.text == "" || password2TextField.text == nil || password2TextField.text == "" {
            makeAlert(title: "Error", message: "Please enter password")
        } else if passwordTextField.text != password2TextField.text {
            makeAlert(title: "Error", message: "Passwords not matched, please try again!")
        } else {
            makeAlert(title: "Success", message: "Sign Up action successfulf")
        }
        
        
        
    }
    
    func makeAlert(title: String, message: String) {
        let signUpAlert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default){ (UIAlertAction) in
                print("ok button clicked.")
        }
        signUpAlert.addAction(okButton)
        
        self.present(signUpAlert, animated: true)
    }
    
}

