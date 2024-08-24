//
//  InputView.swift
//  FirebaseAuth
//
//  Created by Peyman Osatian on 2024-08-24.
//

import SwiftUI

struct InputView: View {
    @Binding var text : String
    let title : String
    let placeholder :  String
    var isSecurefield = false
    var body: some View {
        VStack (alignment: .leading, spacing: 24){
            Text(title)
                .foregroundColor(Color(.darkGray))
                .fontWeight(.semibold)
                .font(.footnote)
            if isSecurefield {
                SecureField(placeholder, text: $text)
                    .font(.system(size: 14))
            } else {
                TextField(placeholder, text: $text)
                    .font(.system(size: 14))
            }
        } // VSTACK
    }
}
#Preview {
    InputView(text: .constant(""), title: "Email Address", placeholder: "name@gmail.com")
}
