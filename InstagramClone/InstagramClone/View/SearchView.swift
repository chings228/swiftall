//
//  SearchView.swift
//  InstagramClone
//
//  Created by man ching chan on 22/8/2023.
//

import SwiftUI

struct SearchView: View {
    
    @State private var searchText = ""
    
    
    var body: some View {
        NavigationStack {
            ScrollView{
                
                LazyVStack(spacing:12){
                    
                    ForEach(0...15, id:\.self){user in
                        
                        HStack {
                            Image("spider-2")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 40,height: 40)
                            .clipShape(Circle())
                            
                            
                            VStack(alignment: .leading){
                                Text("batman")
                                   
                                    .fontWeight(.semibold)

                                Text("Bruce Wayne")

                            }
                            .font(.footnote)
                           
                            
                            Spacer()
                        }
                        .padding(.horizontal)
                        
                       
                        
                    }
                    .searchable(text:$searchText,prompt: "Search...")
                    .padding(.top,8)
                    
                    
                }
                .navigationTitle("Explore")
                .navigationBarTitleDisplayMode(.inline)
                
            }
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
