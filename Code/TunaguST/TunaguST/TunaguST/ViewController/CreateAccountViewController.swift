//
//  CreateAccountViewController.swift
//  TunaguST
//
//  Created by Kosei Ban on 2021-12-01.
//

import UIKit
import RxSwift
import RxCocoa
import FirebaseAuth
import FirebaseFirestore
import PKHUD


class CreateAccountViewController : UIViewController {
    
    private let disposeBag = DisposeBag()
    private let viewModel = CreateAccountViewModel()
    
    //MARK: UIViews
    private let titleLabel = TitleLabel(labelText: "Create your acoount")
    private let logoview  = Logo(imgName: "logo")
    private let nameTextField = CrateAccountTextField(placeHolder: "User Name")
    private let emailTextField = CrateAccountTextField(placeHolder: "Email")
    private let passwordTextField = CrateAccountTextField(placeHolder: "Password")
    private let createButton = CreateAccountButton(title: "Create Account")
    private let haveAcountAlreadyLabel = HaveAccountAlreadyLabel(labelText: "Have an account already?")
    private let MoveToLoginViewButton  = ToLoginViewButton(title: "Log In")
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        setupLayout()
        setupBindings()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isToolbarHidden = true
    }
   
    
    //MARK: Set Up Layout
    private func setupLayout() {
        passwordTextField.isSecureTextEntry = true
        
        let baseStackView = UIStackView(arrangedSubviews: [nameTextField,emailTextField,passwordTextField])
        baseStackView.translatesAutoresizingMaskIntoConstraints = false
        baseStackView.axis = .vertical
        baseStackView.distribution = .fillEqually
        baseStackView.spacing = 40
        
        let bottomStackView = UIStackView(arrangedSubviews: [haveAcountAlreadyLabel,MoveToLoginViewButton])
        bottomStackView.translatesAutoresizingMaskIntoConstraints = false
        bottomStackView.axis = .horizontal
        bottomStackView.distribution = .fillEqually
        
        
        view.addSubview(titleLabel)
        view.addSubview(logoview)
        view.addSubview(baseStackView)
        view.addSubview(createButton)
        view.addSubview(bottomStackView)
        
        
        titleLabel.anchor(top: view.topAnchor,left: view.leftAnchor,right: view.rightAnchor,centerX: view.centerXAnchor,topPadding: 100)
        logoview.anchor(top: titleLabel.bottomAnchor,left: view.leftAnchor,right: view.rightAnchor,centerX: view.centerXAnchor,width: 200, height: 200, topPadding: 50)
        baseStackView.anchor(top: logoview.bottomAnchor, left: view.leftAnchor,right: view.rightAnchor,height: 200, topPadding: 50, leftPadding: 20,rightPadding: 20)
        nameTextField.anchor(height: 40)
        createButton.anchor(top: baseStackView.bottomAnchor,left: view.leftAnchor, right: view.rightAnchor,height: 40, topPadding: 50,leftPadding: 20,rightPadding: 20)
        bottomStackView.anchor(top: createButton.bottomAnchor,left: view.leftAnchor,right: view.rightAnchor,centerX: view.centerXAnchor,topPadding: 20)
       
    }
    
    private func setupBindings(){
        
        // bindings of Text Field
        nameTextField.rx.text
            .asDriver()
            .drive{ [weak self] text in
                self?.viewModel.nameTextInput.onNext(text ?? "")
                // handle text info
            }
            .disposed(by: disposeBag)
        
        emailTextField.rx.text
            .asDriver()
            .drive{ [weak self] text in
                self?.viewModel.emailTextInput.onNext(text ?? "")
                // handle text info
            }
            .disposed(by: disposeBag)
        
        passwordTextField.rx.text
            .asDriver()
            .drive{ [weak self] text in
                self?.viewModel.passwordTextInput.onNext(text ?? "")
                // handle text info
            }
            .disposed(by: disposeBag)
        
        // bindings of button
        createButton.rx.tap
            .asDriver()
            .drive{ [weak self] _ in
                // handle create account button
                self?.createUser()
            }
            .disposed(by: disposeBag)
        
        MoveToLoginViewButton.rx.tap
            .asDriver()
            .drive{ [weak self] _ in
                // handle create account button
               let login = LoginViewController()
                self?.navigationController?.pushViewController(login, animated: true)
            }
            .disposed(by: disposeBag)
        
        
        // binding of View Model
        viewModel
            .validCreateAccountDriver
            .drive { validAll in
                self.createButton.isEnabled = validAll
                self.createButton.backgroundColor = validAll ? .rgb(red: 3, green: 3, blue: 3, alpha: 1) : .init(white: 0.7, alpha: 1)
            }
            .disposed(by: disposeBag)
    
    }
    private func createUser() {
        let email = emailTextField.text
        let password = passwordTextField.text
        let name = nameTextField.text
        
        HUD.show(.progress)
        
        Auth.createUserToFireAuth(email: email, password: password, name: name) { success in
            if success {
                print("Complete Tasks")
                HUD.hide()
                self.dismiss(animated: true)
            } else {
                
            }
        }
        
    }

}

