//
//  CreateAccountViewModel.swift
//  TunaguST
//
//  Created by Kosei Ban on 2021-12-08.
//

import Foundation
import RxSwift
import RxCocoa

class CreateAccountViewModel {
    
    private let disposeBag = DisposeBag()
    
    //MARK: Ovservable
    var nameTextOutput = PublishSubject<String>()
    var emailTextOutput = PublishSubject<String>()
    var passwordTextOutput = PublishSubject<String>()
    var validCreateAccountSubject = BehaviorSubject<Bool>(value: false)
    
    //MARK: Ovserver
    var nameTextInput : AnyObserver<String> {
        nameTextOutput.asObserver()
    }
    var emailTextInput : AnyObserver<String> {
        emailTextOutput.asObserver()
    }
    var passwordTextInput : AnyObserver<String> {
        passwordTextOutput.asObserver()
    }
    var validCreateAccountDriver: Driver<Bool> = Driver.never()
    
    
    init() {
        
        validCreateAccountDriver = validCreateAccountSubject
            .asDriver(onErrorDriveWith: Driver.empty())
        
       let nameValid = nameTextOutput
            .asObservable()
            .map { text -> Bool in
                return text.count >= 1
            }

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
        
        Observable.combineLatest(nameValid, emailValid, passwordValid) { $0 && $1 && $2 }
        .subscribe { validAll in
            self.validCreateAccountSubject.onNext(validAll)
        }
        .disposed(by: disposeBag)

    }
}
