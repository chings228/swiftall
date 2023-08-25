//
//  CreatePasswordView.swift
//  InstagramClone
//
//  Created by man ching chan on 22/8/2023.
//

import SwiftUI

struct CreatePasswordView: View {
    
    @State private var password = ""
    
    @Environment(\.dismiss) var dismiss
    
    
    
    var body: some View {
        VStack(spacing: 3){
            
            Text("Password")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.top)
            
            Text("Your password must be at least 6 characters in length")
                .font(.footnote)
                .foregroundColor(.gray)
                .fontWeight(.bold)
            
            
            SecureField("Password",text:$password)
                .autocapitalization(.none)
                .modifier(IGTextFieldModifier())
                .padding(.top,8)
            
            
            NavigationLink{
                CreateUsernameView()
                    .navigationBarBackButtonHidden(true)
            }label: {
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

struct CreatePasswordView_Previews: PreviewProvider {
    static var previews: some View {
        CreatePasswordView()
    }
}
