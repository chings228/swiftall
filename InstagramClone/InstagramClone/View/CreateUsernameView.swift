//
//  CreateUsernameView.swift
//  InstagramClone
//
//  Created by man ching chan on 22/8/2023.
//

import SwiftUI

struct CreateUsernameView: View {
    
    @State private var username = ""
    @Environment(\.dismiss) var dismiss
    
    
    var body: some View {
       
        VStack(spacing: 3){
            
            Text("Create username")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.top)
            
            Text("Pick a username for your new account. You can always change it later")
                .font(.footnote)
                .foregroundColor(.gray)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                
            
            
            TextField("Username",text:$username)
                .autocapitalization(.none)
                .modifier(IGTextFieldModifier())
                .padding(.top,8)
            
            NavigationLink{
                CreatePasswordView()
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

struct CreateUsernameView_Previews: PreviewProvider {
    static var previews: some View {
        CreateUsernameView()
    }
}
