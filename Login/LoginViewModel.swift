//
//  LoginViewModel.swift
//  Login
//
//  Created by nur on 28.06.2024.
//

import Foundation


struct User :Equatable {
    var name: String = ""
    var password: String = ""
    
    mutating func clearForm(){
        name = ""
        password = ""
    }
}



final class LoginViewmodel : ObservableObject {
   

    enum CurrentState {
        case loading
        case logged
        case notLogged
    }
    @Published var user : User = .init()
    @Published var state : CurrentState = .notLogged
    
    
    func login (){
        guard !user.name.isEmpty && !user.password.isEmpty else {
            return
        }
        
        state = .loading
        
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) { [weak self] in
            self?.state = .logged
        }
        
    }
    
    func logout(){
        self.state = .notLogged
        self.user.clearForm()
    }
    
}
