//
//  LoginView.swift
//  Login
//
//  Created by nur on 28.06.2024.
//


import SwiftUI

struct LoginView: View {
    @Binding var user : User
    let didTap :() -> Void
    var body: some View {
        ZStack{
            Color("pink")
                .ignoresSafeArea()
            VStack {
                VStack {
                    Spacer().frame(height:30)
                    Image("animal")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 320)
                    Text("Welcome")
                        .font(.system(size: 40, weight: .bold))
                        .foregroundColor(Color("grey"))
                    
                    Spacer().frame(height:30)
                    TextField("Name", text: $user.name, prompt :Text("Plase Enter Name")
                    )
                    .padding(
                        EdgeInsets(
                            top: 10,
                            leading: 15,
                            bottom: 10,
                            trailing: 0
                        ))
                        .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color("grey").opacity(0.4))
                    ).padding(EdgeInsets(
                        top: 0,
                        leading: 20,
                        bottom: 0,
                        trailing: 20
                    ))
                    .font(.system(size: 19,weight: .medium))
                    SecureField("Password", text: $user.password,prompt : Text("Enter Password")
                    ).padding(
                        EdgeInsets(
                            top: 10,
                            leading: 15,
                            bottom: 10,
                            trailing: 0
                        )
                    )
                    
                    .overlay(
                        RoundedRectangle(cornerRadius:8)
                            .stroke(Color("grey").opacity(0.4))
                    ).padding(EdgeInsets(
                        top: 20,
                        leading: 20,
                        bottom: 0,
                        trailing: 20
                    )).font(.system(size: 19,weight: .medium))
                    Spacer().frame(height: 30)
                    Button{
                        didTap()
                    }label : {
                        Text("Sign In")
                            .font(.system(size: 28, weight: .semibold))
                            .foregroundColor(Color("grey"))
                            .frame(width:350,height: 50)
                            .background(Color.white)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                    }
                    Spacer()
                }.onChange(of: user) {
                    newValue in
                    print("User changed to \(newValue)")
                }
                HStack{
                    Text("Don't have an account?")
                        .font(.system(size: 20, weight: .regular))
                        .foregroundColor(Color.white)
                    Button{
                        
                    } label: {
                        Text("Sign Up")
                            .font(.system(size: 20, weight: .semibold))
                            .foregroundColor(Color("grey"))
                    }
                }
                
            }
            
        }
    }
    
    
    
}


#Preview {
    LoginView(user: .constant(.init())){
        
    }
}
