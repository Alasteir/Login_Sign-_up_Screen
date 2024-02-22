//
//  ViewController.swift
//  Login_Signup_Screen
//
//  Created by Alaster on 21.02.2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstNameTextField.layer.cornerRadius = 10
        firstNameTextField.layer.borderWidth = 1
        firstNameTextField.layer.borderColor = UIColor.gray.cgColor
        let padingViewFirstName = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: firstNameTextField.frame.height))
        firstNameTextField.leftView = padingViewFirstName
        firstNameTextField.leftViewMode = .always
        
        lastNameTextField.layer.cornerRadius = 10
        lastNameTextField.layer.borderWidth = 1
        lastNameTextField.layer.borderColor = UIColor.gray.cgColor
        let padingViewLastName = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: lastNameTextField.frame.height))
        lastNameTextField.leftView = padingViewLastName
        lastNameTextField.leftViewMode = .always
        
        
        passwordContainerStackView.layer.borderWidth = 1
        passwordContainerStackView.layer.cornerRadius = 10
        passwordContainerStackView.layer.borderColor = UIColor.gray.cgColor
        
        passwordContainerStackView2.layer.borderWidth = 1
        passwordContainerStackView2.layer.cornerRadius = 10
        passwordContainerStackView2.layer.borderColor = UIColor.gray.cgColor
        
        
    }

    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    
    
    @IBOutlet weak var passwordContainerStackView: UIStackView!
    @IBOutlet weak var passwordContainerStackView2: UIStackView!
    
    
}

