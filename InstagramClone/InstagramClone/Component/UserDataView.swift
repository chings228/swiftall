//
//  UserDataView.swift
//  InstagramClone
//
//  Created by man ching chan on 22/8/2023.
//

import SwiftUI


            
            struct UserDataView : View{
                
                var DetailType : String
                var DetailNum : Int
                
                var body : some View{
                    
                    VStack{
                        Text("\(DetailNum)")
                            .font(.subheadline)
                        
                        Text(DetailType)
                            .font(.footnote)
                            .fontWeight(.semibold)
                    }
                    .frame(width: 76)
                    
                    
                    
                }
                
                
            }
        



struct UserDataView_Previews: PreviewProvider {
    static var previews: some View {
        UserDataView(DetailType: "Followers", DetailNum: 45)
    }
}
