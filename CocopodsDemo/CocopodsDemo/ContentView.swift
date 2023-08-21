//
//  ContentView.swift
//  CocopodsDemo
//
//  Created by man ching chan on 18/8/2023.
//

import SwiftUI
import SDWebImageSwiftUI

struct ContentView: View {
    
    

    
    var testarray = ["aaa","bbb","bbb","cccc","dddd","eeeee","fffff","bbb","cccc","dddd","eeeee","fffff"]
    
    
    var body: some View {
        VStack {
            

            
            
            

            List{
                Section(header:
                            Text("wowo")
                    .font(.largeTitle)
                    .bold()
                ) {
                    ForEach(testarray, id: \.self) { data in
                        
                        
                        HStack {
                            WebImage(url: URL(string: "https://nokiatech.github.io/heif/content/images/ski_jump_1440x960.heic"))
                            .onSuccess { image, data, cacheType in
                                guard let data else {return}
                                print(data)
                            }
                            .resizable() // Resizable like SwiftUI.Image, you must use this modifier or the view will use the image bitmap size
                            .placeholder(Image(systemName: "photo")) // Placeholder Image
                            // Supports ViewBuilder as well
                            .placeholder {
                                Rectangle().foregroundColor(.gray)
                            }
                            .indicator(.activity) // Activity Indicator
                            .transition(.fade(duration: 0.5)) // Fade Transition with duration
                            .scaledToFit()
                        .frame(width: 100, height: 100, alignment: .center)
                            
                            Spacer()
                            
                            Text(data)
                        

                        }
                        
                        
                        
                    }
                    
                }
                
                
                Section(header:
                            Text("wowo")
                    .font(.largeTitle)
                    .bold()
                ) {
                    ForEach(testarray, id: \.self) { data in
                        Text(data)
                    }
                    
                }

                
                
            }
            .listStyle(.plain)
            .background(Color.clear)
            .scrollContentBackground(.hidden)
            .padding(EdgeInsets(top: 0, leading: -20, bottom: 0, trailing: -20))
            
            
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
