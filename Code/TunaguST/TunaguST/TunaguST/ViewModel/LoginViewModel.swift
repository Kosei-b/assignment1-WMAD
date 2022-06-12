//
//  LoginViewModel.swift
//  TunaguST
//
//  Created by Kosei Ban on 2021-12-10.
//

import Foundation
import RxSwift
import RxCocoa

class LoginViewModel {
    
    private let disposeBag = DisposeBag()
    
    //MARK: Ovservable
    var emailTextOutput = PublishSubject<String>()
    var passwordTextOutput = PublishSubject<String>()
    var validLoginSubject = BehaviorSubject<Bool>(value: false)
    
    //MARK: Ovserver
    
    var emailTextInput : AnyObserver<String> {
        emailTextOutput.asObserver()
    }
    var passwordTextInput : AnyObserver<String> {
        passwordTextOutput.asObserver()
    }
    var validLoginDriver: Driver<Bool> = Driver.never()
    
    
    init() {
        
        validLoginDriver = validLoginSubject
            .asDriver(onErrorDriveWith: Driver.empty())
        
       let emailValid = emailTextOutput
            .asObservable()
            .map { text -> Bool in
                return text.count >= 1
            }
        
       let passwordValid = passwordTextOutput
            .asObservable()
            .map { text -> Bool in
                return text.count >= 6
            }
        
        Observable.combineLatest(emailValid, passwordValid) { $0 && $1 }
        .subscribe { validAll in
            self.validLoginSubject.onNext(validAll)
        }
        .disposed(by: disposeBag)

    }
}

