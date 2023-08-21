//
//  ToggleDemo.swift
//  CocopodsDemo
//
//  Created by man ching chan on 21/8/2023.
//

import SwiftUI



class ViewModel : ObservableObject{
    
    @Published var isDarkMode = false{
        
        didSet{
            
            print("isDarkMode \(isDarkMode)")
            
            gogo()
            
        }
    }
    
    @Published var isShareMode = false{
        
        didSet{
            
            print("isShareMode \(isShareMode)")
        }
    }
    
    @Published var isRubberMode = false{
        
        didSet{
            
            print("isRubberMode \(isRubberMode)")
        }
    }
    
    
    func gogo(){
        print("gogo")
    }
    
}



struct ToggleDemo: View {
    
    @StateObject var vm = ViewModel()
    
    
    var body: some View {
        
        VStack{
            
            VStack{

                ToggleSubView(vm:vm, mode: $vm.isDarkMode, pictureName: "moon.circle.fill")
              ToggleSubView(vm:vm,mode: $vm.isShareMode, pictureName: "square.and.arrow.up.on.square")
               ToggleSubView(vm:vm,mode: $vm.isRubberMode, pictureName: "eraser.fill")
            }
        
        
            Spacer()
            
        
        }
        
        .background(vm.isDarkMode ? Color.black : Color.white)
    }
}

struct ToggleDemo_Previews: PreviewProvider {
    static var previews: some View {
        ToggleDemo()
    }
}


struct ToggleSubView : View{
    
    @State var vm : ViewModel
    
    @Binding var mode : Bool
    
    var pictureName : String
    
    var body : some View{
        
        
        Toggle(isOn: $mode) {
            Image(systemName: pictureName)
                .font(.title2)
                .foregroundColor(.blue)
        }
        .padding(.horizontal)
        .frame(height:44)
        .background(vm.isDarkMode ? Color(.systemGroupedBackground) : Color.yellow)
        .cornerRadius(10)
    
        .padding()
        
    }
}



