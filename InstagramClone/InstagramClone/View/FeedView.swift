//
//  FeedView.swift
//  InstagramClone
//
//  Created by man ching chan on 22/8/2023.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
       NavigationStack{
            ScrollView{
                
                LazyVStack(spacing:16){
                    
                    ForEach(0...10, id : \.self){post  in
                        
                        FeedCell()
                        
                        
                    }
                    
                    
                }
                
            }
            .navigationTitle("Feed")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Image("instagram-logo3")
                        .resizable()
                        .frame(width:100,height:28)
                        .scaledToFit()
                        
                      
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Image(systemName: "paperplane")
                        .imageScale(.large)
                }

            }
           
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
