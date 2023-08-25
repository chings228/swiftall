//
//  CompleteRegView.swift
//  InstagramClone
//
//  Created by man ching chan on 22/8/2023.
//

import SwiftUI

struct CompleteRegView: View {
    var body: some View {
        
        @Environment(\.dismiss) var dismiss

        VStack(spacing: 3){
            
            Spacer()
            
            Text("Welcome to Instagram, \nTom Chan")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.top)
                .multilineTextAlignment(.center)
            
            Text("Click below to complete registration and start using Instagram")
                .font(.footnote)
                .foregroundColor(.gray)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)

            
            
            NavigationLink{
                CreateUsernameView()
                    .navigationBarBackButtonHidden(true)
            }label: {
                Text("Complete Sign Up")
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

struct CompleteRegView_Previews: PreviewProvider {
    static var previews: some View {
        CompleteRegView()
    }
}
