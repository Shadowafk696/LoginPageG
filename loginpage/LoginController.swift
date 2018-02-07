//
//  LoginController.swift
//  loginpage
//
//  Created by Alumno on 23/01/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import UIKit

class LoginController: UIViewController {
    
    override func viewDidLoad(){
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 61/255, green: 101/125, blue: 161/125, alpha:1)
        
        setupViews()
    }
        let inputContainerView : UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.masksToBounds = true
        return view
    } ()
    let inputTextField : UITextField = {
        let textField = UITextField ()
        textField.placeholder = "User:"
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    let EmailTextField : UITextField = {
        let textField = UITextField ()
        textField.placeholder = "Email:"
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    let PasswordTextField : UITextField = {
        let textField = UITextField ()
        textField.placeholder = "Password:"
        textField.isSecureTextEntry = true
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    let registerButton : UIButton = {
        var button = UIButton()
        button.setTitle("Register", for: .normal)
        button.backgroundColor = .blue
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
        func setupViews() {
            //add views
        view.addSubview(inputContainerView)
        inputContainerView.addSubview(inputTextField)
            inputContainerView.addSubview(EmailTextField)
            inputContainerView.addSubview(PasswordTextField)
       
            view.addSubview(registerButton)
            
            //setup constraints
            inputContainerView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive
            = true
            inputContainerView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive
            = true
            inputContainerView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -24).isActive
                = true
            inputContainerView.heightAnchor.constraint(equalToConstant: 150).isActive
                = true
            
            inputTextField.topAnchor.constraint(equalTo: inputContainerView.topAnchor).isActive = true
            inputTextField.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor).isActive=true
            inputTextField.leftAnchor.constraint (equalTo: inputContainerView.leftAnchor, constant: 12).isActive = true
            inputTextField.heightAnchor.constraint(equalTo: inputContainerView.heightAnchor, multiplier: 1/3).isActive = true
            EmailTextField.topAnchor.constraint(equalTo: inputTextField.bottomAnchor).isActive = true
            EmailTextField.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor).isActive = true
            EmailTextField.leftAnchor.constraint (equalTo: inputContainerView.leftAnchor, constant: 12).isActive = true
            EmailTextField.heightAnchor.constraint(equalTo: inputContainerView.heightAnchor, multiplier: 1/3).isActive = true
            PasswordTextField.topAnchor.constraint(equalTo: EmailTextField.bottomAnchor).isActive = true
            PasswordTextField.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor).isActive = true
            PasswordTextField.leftAnchor.constraint (equalTo: inputContainerView.leftAnchor, constant: 12).isActive = true
            PasswordTextField.heightAnchor.constraint(equalTo: inputContainerView.heightAnchor, multiplier: 1/3).isActive = true
            
            registerButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
            registerButton.topAnchor.constraint(equalTo: inputContainerView.bottomAnchor).isActive = true
            registerButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
            registerButton.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor).isActive = true
            
    }
}
