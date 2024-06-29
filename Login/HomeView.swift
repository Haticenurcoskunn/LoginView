//
//  HomeView.swift
//  Login
//
//  Created by nur on 28.06.2024.
//

import SwiftUI

struct HomeView: View {
   
   @StateObject private var vm = LoginViewmodel()
    let didTap: () -> Void
    var body: some View {
        Text("Hello,You are now logged in")
        Button{
            didTap()
        }label:{
            Text("Log Out")
        }
        
    }
}

#Preview {
    HomeView{
    }
}
