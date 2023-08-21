//
//  GridDemo.swift
//  CocopodsDemo
//
//  Created by man ching chan on 21/8/2023.
//

import SwiftUI

struct GridDemo: View {
    var body: some View {
        
        
        let columns = [GridItem(.flexible()),GridItem(.flexible()),GridItem(.flexible())]

        
        ScrollView{
            
            LazyVGrid(columns: columns) {
                ForEach(0..<50,id: \.self){index in
                    
                    TempGridView(indexs: index)
                    
                }
            }
            .padding(10)
            

            
            
            
        }
        .ignoresSafeArea()
        
        
    }
}

struct TempGridView : View{
    
    var indexs  = 0
    
    init(indexs: Int = 0) {
        self.indexs = indexs
        print(indexs)
    }
    
    
    var body : some View{
        

        
        Rectangle()
            .frame(height: 300)
        
    }
}


struct GridDemo_Previews: PreviewProvider {
    static var previews: some View {
        GridDemo()
    }
}
