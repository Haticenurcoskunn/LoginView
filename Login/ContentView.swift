//
//  ContentView.swift
//  Login
//
//  Created by nur on 28.06.2024.
//

import SwiftUI

struct ContentView: View {
     
    @StateObject private var vm = LoginViewmodel()
    
    var body: some View {
        switch vm.state {
        case .loading :
            ProgressView()
        case .logged :
            HomeView{
                vm.logout()
            }
        case .notLogged:
            LoginView(user: $vm.user) {
                vm.login()
            }
        }
    }
}

#Preview {
    ContentView()
}

