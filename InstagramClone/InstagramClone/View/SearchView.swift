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
                    
                    ForEach(User.MOCK_USERS){user in
                        
                        NavigationLink(value:user){
                            
                            
                            HStack {
                                Image(user.profileImageUrl ?? "")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 40,height: 40)
                                .clipShape(Circle())
                                
                                
                                VStack(alignment: .leading){
                                    Text(user.username)
                                       
                                        .fontWeight(.semibold)

                                    Text(user.fullname ?? "")

                                }
                                .font(.footnote)
                               
                                
                                Spacer()
                            }
                            .padding(.horizontal)
                            .foregroundColor(.black)
                          
                            
                        }
                        
                        
                        
                        

                        
                       
                        
                    }
                    
                    .navigationDestination(for: User.self, destination: { user in
                        ProfileView()
                    })
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
