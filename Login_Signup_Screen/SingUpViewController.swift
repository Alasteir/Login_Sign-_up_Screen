//
//  ViewController.swift
//  Login_Signup_Screen
//
//  Created by Alaster on 21.02.2024.
//

import UIKit

class SingUpViewController: UIViewController {

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
        
        emailTextField.layer.cornerRadius = 10
        emailTextField.layer.borderWidth = 1
        emailTextField.layer.borderColor = UIColor.gray.cgColor
        let padingViewEmail = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: emailTextField.frame.height))
        emailTextField.leftView = padingViewEmail
        emailTextField.leftViewMode = .always
        
        
        
        passwordContainerStackView.layer.borderWidth = 1
        passwordContainerStackView.layer.cornerRadius = 10
        passwordContainerStackView.layer.borderColor = UIColor.gray.cgColor
        
        passwordContainerStackView2.layer.borderWidth = 1
        passwordContainerStackView2.layer.cornerRadius = 10
        passwordContainerStackView2.layer.borderColor = UIColor.gray.cgColor
        
        emailTextField.layer.borderWidth = 1
        emailTextField.layer.cornerRadius = 10
        emailTextField.layer.borderColor = UIColor.gray.cgColor
        
        
    }

    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    
    @IBOutlet weak var passwordContainerCheck1: UITextField!
    @IBOutlet weak var passwordContainerCheck2: UITextField!
    
    
    
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordContainerStackView: UIStackView!
    @IBOutlet weak var passwordContainerStackView2: UIStackView!
    
   // @IBAction func onCheckEmailTouchUp(_ sender: Any) {
   //     performSegue(withIdentifier: "showCheckEmail", sender: nil)
        
        
   // }
    
   // override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      //  if let checkEmailVC = segue.destination as? CheckEmailViewController {
        //    checkEmailVC.view.layoutIfNeeded()
        //    checkEmailVC.nameLabel.text = firstNameTextField.text
        //}
   // }
    func validateFields(name: String?, lastName: String?, email: String?, password1: String?, password2: String?) -> Bool {
      
        guard let name = firstNameTextField.text, !name.isEmpty,
              let lastName = lastNameTextField.text, !lastName.isEmpty,
              let email = emailTextField.text, !email.isEmpty,
              let password1 = passwordContainerCheck1.text, !password1.isEmpty,
              let password2 = passwordContainerCheck2.text, !password2.isEmpty
        else {
            return false
        }
        
       

      
        guard email.contains("@")
        else {
            return false
        }

      
        guard password1 == password2
        else {
            return false
        }

        
        return true
    }

    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        
        if (firstNameTextField.text != "" && lastNameTextField.text != "" && emailTextField.text != "" && passwordContainerCheck1.text != "" && passwordContainerCheck2.text != "") {
            
            return true
        }
        else{
            return false
        }
        
        }
        
    }

///11111111111

