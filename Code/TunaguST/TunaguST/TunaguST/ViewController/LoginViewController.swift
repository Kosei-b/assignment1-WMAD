//
//  LoginViewController.swift
//  TunaguST
//
//  Created by Kosei Ban on 2021-12-03.
//
import UIKit
import RxSwift
import RxCocoa
import FirebaseAuth
import PKHUD


class LoginViewController : UIViewController {
    
    private let disposeBag = DisposeBag()
    private let viewModel = LoginViewModel()
    
    private let titleLabel = TitleLabelLogin(labelText: "Log in")
    private let logoview  = Logo(imgName: "logo")
    private let emailTextField = LoginTextField(placeHolder: " Email")
    private let passwordTextField = LoginTextField(placeHolder: "Password")
    private let fogotPasswordButton = ForgotPasswordButton(title: "Forgot Password ?")
    private let loginButton = LoginButton(title: "Log in")
    private let dontHaveAcountLabel = DontHaveAccountLabel(labelText: "Don't have an account? ")
    private let MoveToCreateAccountViewButton = ToCreateAccountButton(title: "Create account")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        setupLayout()
        setupBindings()
       
    }
    
    //MARK: Set Up Layout
    private func setupLayout() {
        
        let baseStackView = UIStackView(arrangedSubviews: [emailTextField,passwordTextField,fogotPasswordButton])
        baseStackView.translatesAutoresizingMaskIntoConstraints = false
        baseStackView.axis = .vertical
        baseStackView.distribution = .fillEqually
        baseStackView.spacing = 40
        
        let bottomStackView = UIStackView(arrangedSubviews: [dontHaveAcountLabel,MoveToCreateAccountViewButton])
        bottomStackView.translatesAutoresizingMaskIntoConstraints = false
        bottomStackView.axis = .horizontal
        bottomStackView.distribution = .fillEqually
        
        
        view.addSubview(titleLabel)
        view.addSubview(logoview)
        view.addSubview(baseStackView)
        view.addSubview(loginButton)
        view.addSubview(bottomStackView)
        
        
        titleLabel.anchor(top: view.topAnchor,left: view.leftAnchor,right: view.rightAnchor,centerX: view.centerXAnchor,topPadding: 100)
        logoview.anchor(top: titleLabel.bottomAnchor,left: view.leftAnchor,right: view.rightAnchor,centerX: view.centerXAnchor,width: 200, height: 200, topPadding: 50)
        baseStackView.anchor(top: logoview.bottomAnchor, left: view.leftAnchor,right: view.rightAnchor,height: 200, topPadding: 50, leftPadding: 20,rightPadding: 20)
        emailTextField.anchor(height: 40)
        loginButton.anchor(top: baseStackView.bottomAnchor,left: view.leftAnchor, right: view.rightAnchor,height: 40, topPadding: 50,leftPadding: 20,rightPadding: 20)
        bottomStackView.anchor(top: loginButton.bottomAnchor,left: view.leftAnchor,right: view.rightAnchor,centerX: view.centerXAnchor,topPadding: 20)
        
    }
    
    private func setupBindings() {
        
        // bindings of Text Field
       
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
        
        
        
      // Bindings of Button
        MoveToCreateAccountViewButton.rx.tap
            .asDriver()
            .drive { [weak self] _ in
                self?.navigationController?.popViewController(animated: true)
                
            }
            .disposed(by: disposeBag)
        
        loginButton.rx.tap
            .asDriver()
            .drive { [weak self] _ in
                self?.login()
            }
            .disposed(by: disposeBag)
        
     // Vindings of View Model
        viewModel
            .validLoginDriver
            .drive { validAll in
                self.loginButton.isEnabled = validAll
                self.loginButton.backgroundColor = validAll ? .rgb(red: 3, green: 3, blue: 3, alpha: 1) : .init(white: 0.7, alpha: 1)
            }
            .disposed(by: disposeBag)
    }
    
    private func login() {
        let email = emailTextField.text ?? ""
        let password = passwordTextField.text ?? ""

        HUD.show(.progress)
        Auth.loginWithFireAuth(email: email, password: password) { success in
            HUD.hide()
            if success {
                self.dismiss(animated: true)
            } else {
                
            }
        }

       
    }
}
