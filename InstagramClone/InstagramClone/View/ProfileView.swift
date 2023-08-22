//
//  ProfileView.swift
//  InstagramClone
//
//  Created by man ching chan on 22/8/2023.
//

import SwiftUI

struct ProfileView: View {
    
    
    private let imgHeight = UIScreen.main.bounds.width / 3
    
    private let gridItems:[GridItem] = [
    
        .init(.flexible(),spacing: 1),
        .init(.flexible(),spacing: 1),
        .init(.flexible(),spacing: 1)
    ]
    
    
    
    var body: some View {
        

        NavigationStack{
            ScrollView{
                
                VStack{
                    // header
                    
                    VStack(spacing: 10){
                        
                        // pic and status
                        HStack{
                            
                            Image("square")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 80,height: 80)
                                .clipShape(Circle())
                            
                            Spacer()
                            
                            HStack(spacing: 8){
                                UserDataView(DetailType: "Posts", DetailNum: 3)
                                UserDataView(DetailType: "Followers", DetailNum: 3)
                                UserDataView(DetailType: "Following", DetailNum: 3)
                            }
                            
                        }
                        .padding(.horizontal)
                        .padding(.bottom,8)
                        
                        //name and bio
                        
                        VStack(alignment: .leading,spacing: 4){
                            Text("Chadwick Bozeman")
                                .font(.footnote)
                                .fontWeight(.semibold)
                            
                            Text("Wakanda Forever")
                                .font(.footnote)
                            
                        }
                        
                        .frame(maxWidth: .infinity,alignment:.leading)
                        .padding(.horizontal)
                        
                        
                        
                        // action buttion
                        
                        Button {
                            
                        } label: {
                            Text("Edit Profile")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .frame(width: 360,height:32)
                                .foregroundColor(.black)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 6)
                                        .stroke(Color.gray,lineWidth:1))
                        }
                        
                        
                        
                        Divider()
                        
                    }
                    
                    
                    // post grid view
                    
                    LazyVGrid(columns: gridItems,spacing:1) {
                        
                        ForEach(0...60, id:\.self){ index in
                            
                            
                            Image("spider-1")
                                .resizable()
                                .scaledToFill()
                                .frame(width:imgHeight,height:imgHeight)
                                .clipShape(Rectangle())
                                .border(Color.white,width: 1)
                                
                            
                            
                        }
                        
                        
                        
                    }
                    
                }
                
                
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        
                    } label: {
                        Image(systemName: "line.3.horizontal")
                            .foregroundColor(.black)
                    }

                }
            }
        }
       
    }
}



    


struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
