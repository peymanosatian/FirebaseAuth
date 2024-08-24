//
//  LoginView.swift
//  FirebaseAuth
//
//  Created by Peyman Osatian on 2024-08-24.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    var body: some View {
        NavigationStack{
            VStack{
             // IMAGE
                Image("security")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120, height: 120)
                    .padding(.vertical,32)
                // FORM FIELDS
                VStack(spacing: 24){
                    InputView(text: $email,
                              title: "Email Address",
                              placeholder: "name@example.com")
                    .autocapitalization(.none)
                    InputView(text: $password,
                              title: "Password",
                              placeholder: "Enter your password",
                              isSecurefield: true)
                } // VSTACK
                .padding(.horizontal)
                .padding(.top,24)
                // SIGNIN BUTTON
                Button{
                    print("Log user in ..")
                } label: {
                    HStack{
                        Text("SIGN IN ")
                            .fontWeight(.semibold)
                        Image(systemName: "arrow.right")
                    }
                    .foregroundColor(.white)
                    .frame(width: UIScreen.main.bounds.width - 48, height: 48)
                }
                .background(Color(.systemBlue))
                .cornerRadius(10)
                .padding(.top, 24)
                
                Spacer()
                // SIGNUP BUTTON
                NavigationLink{
                    
                } label :{
                    HStack (spacing: 3){
                    Text("Dont have an account?")
                        Text("Sign Up")
                            .fontWeight(.bold)
                    } // HSTACK
                    .font(.system(size: 14))
                }
            } // VSTACK
        } // NAVIGATIONSTACK
    }
}

#Preview {
    LoginView()
}
