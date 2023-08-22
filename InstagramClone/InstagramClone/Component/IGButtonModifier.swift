//
//  IGButtonModifier.swift
//  InstagramClone
//
//  Created by man ching chan on 22/8/2023.
//

import Foundation
import SwiftUI


struct IGButtonModifier : ViewModifier{
    
    
    func body(content: Content) -> some View {
        
        content
            .font(.subheadline)
            .fontWeight(.semibold)
            .frame(width: 360,height: 44)
            .foregroundColor(.white)
            .background(Color(.systemCyan))
            .cornerRadius(8)

        
    }
    
    
}
