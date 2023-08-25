//
//  NavigationStackDemo.swift
//  CocopodsDemo
//
//  Created by man ching chan on 23/8/2023.
//

import SwiftUI

struct NavigationStackDemo: View {
    
    
    @State var path = NavigationPath()
    
    
    var body: some View {
        
        
        NavigationStack(path:$path){

            VStack(spacing: 20){
                
                
                ForEach(demoobj.Sample){user in
                    
                    
                    NavigationLink(value: user) {
                        Text(user.name)
                        
                    }
                    
                }

                Text("sdfsdfsfd")
                
            }
            .navigationTitle("wwwwww")
            .navigationDestination(for: demoobj.self) { obj in
               
                SecondView(user: obj,path: $path)
                
            }
        }
        .onAppear{
            print(path.count)
        }
        
    }
}


struct demoobj : Identifiable,Hashable{
    
    let id : String
    let name : String
    
    
}

extension demoobj{
    

    
    static var Sample:[demoobj] = [
        demoobj(id: UUID().uuidString, name: "Toom"),
        demoobj(id: UUID().uuidString, name: "mark"),
        demoobj(id: UUID().uuidString, name: "ann"),
        demoobj(id: UUID().uuidString, name: "woo"),
        demoobj(id: UUID().uuidString, name: "leslie"),
        demoobj(id: UUID().uuidString, name: "andrew"),
        demoobj(id: UUID().uuidString, name: "angus"),
    
    ]
    
}


struct SecondView: View {
    
    var user : demoobj?
    
    @Binding var path : NavigationPath
    
    var body: some View {
        

        VStack{
            
            if let user = user {
                

                    Text("Second View \(user.id)")
                    
                    Text("Second View \(user.name)")
                
                NavigationLink(value: demoobj.Sample.randomElement()!) {
                    Text("Random ")
                }

                
                
            }
            
            Button {
                path.removeLast(path.count)
            } label: {
                Text("click path ")
            }

            
        }
        .onAppear{
            print(path.count)
        }
            
    }

}


struct ThirdView : View{
    
    var user : demoobj?
    
    var body : some View{
        
        VStack{
            if let user = user{
                
                Text("Third View \(user.id)")
                
                Text("Third View \(user.name)")
            }
            
        }
        
    }
}




struct NavigationStackDemo_Previews: PreviewProvider {
    static var previews: some View {
        

            NavigationStackDemo()
            

        
    }
}
