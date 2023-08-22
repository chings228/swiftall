//
//  IGTextFieldModifier.swift
//  InstagramClone
//
//  Created by man ching chan on 22/8/2023.
//

import Foundation
import SwiftUI


struct IGTextFieldModifier : ViewModifier{
    
    
    func body(content: Content) -> some View {
        
        content
        .font(.subheadline)
        .padding(12)
        .background(Color(.systemGray6))
        .cornerRadius(6)
        .padding(.horizontal,24)
        
    }
    
    
}
