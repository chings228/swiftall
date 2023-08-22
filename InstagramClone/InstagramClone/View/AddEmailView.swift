//
//  AddEmailView.swift
//  InstagramClone
//
//  Created by man ching chan on 22/8/2023.
//

import SwiftUI

struct AddEmailView: View {
    
    @State private var email = ""
    
    @Environment(\.dismiss) var dismiss
    
    
    var body: some View {
        VStack(spacing: 3){
            
            Text("Add your email")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.top)
            
            Text("You'll use this email to sign in to your account")
                .font(.footnote)
                .foregroundColor(.gray)
                .fontWeight(.bold)
            
            
            TextField("Email",text:$email)
                .autocapitalization(.none)
                .modifier(IGTextFieldModifier())
                .padding(.top,8)
            
            Button {
                print("Login")
            } label: {
                Text("Next")
                    .modifier(IGButtonModifier())
            }
            .padding(.vertical,20)
            
            Spacer()
                
            
            
        }
        .padding(.top,40)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Image(systemName: "chevron.left")
                    .imageScale(.large)
                    .onTapGesture {
                        dismiss()
                    }
            }
        }
    }
}

struct AddEmailView_Previews: PreviewProvider {
    static var previews: some View {
        AddEmailView()
    }
}
