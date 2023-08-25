//
//  NavigationStackDemo2.swift
//  CocopodsDemo
//
//  Created by man ching chan on 23/8/2023.
//

import SwiftUI




struct Game : Hashable,Identifiable{
    
    let id = UUID().uuidString
    let name : String
    
    static var MOCK_Game = [
        Game(name: "Fifa"),
        Game(name: "Spiderman"),
        Game(name: "GTA")
        ]
    
    
}

struct Platform : Hashable,Identifiable{
    let id = UUID().uuidString
    let name : String
    
    static var MOCK_Platform = [
        Platform(name: "Playstation"),
        Platform(name: "XBox"),
        Platform(name: "Wii")
        ]
}



struct NavigationStackDemo2: View {
    

    @State var path = NavigationPath()
    
    var body: some View {
        
        VStack{
            
            NavigationStack(){
                List{
                    
                    Section("Games") {
                        

                        ForEach(Game.MOCK_Game) { game in
                            
                            NavigationLink(value: game) {
                                Text(game.name)
                            }
                        }
                    }
                    
                    Section("Platforms"){
                        ForEach(Platform.MOCK_Platform) { platform in
                            NavigationLink(value: platform) {
                                Text(platform.name)
                            }
                        }
                        
                    }
                    
                    
                    
                }
                .navigationTitle("TV Console")
                .navigationDestination(for: Game.self) { game in
                    Text(game.name)
                }
                .navigationDestination(for: Platform.self) { platform in
                    Text(platform.name)
                }
            }

            
            
        }
        
        
        
    }
}

struct NavigationStackDemo2_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStackDemo2()
    }
}
