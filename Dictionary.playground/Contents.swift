import UIKit
//
//var greeting = "Hello, playground"
//
//
//
//var aaArray : [[String:String]] = []
//
//
//aaArray.append(["key1":"value1"])
//aaArray.append(["key1":"value1"])
//aaArray.append(["key1":"value1","key2":"key3"])
//
//print(aaArray)
//
//
//let index = 2
//
//print (aaArray.indices.contains(index))
//
//if (aaArray.indices.contains(index)){
//
//
//    let bb = aaArray[index]
//
//    print(bb)
//
//    if  let val = bb["key8"] {
//        print(val)
//    }
//    else{
//        print("key not exist")
//    }
//
//}
//
//
//
//func run(){
//
//    let mystery :Any = Bool.random() ? "Hello" : 33
//
//    print(mystery)
//
//    let arrayd :[Any] = [1,"dd",true]
//
//    print(arrayd)
//
//    print(type(of: arrayd))
//
//    for item in arrayd{
//
//        print(type(of: item))
//    }
//
//}
//
////12
//run()
//
//


func convertJsonToArray(array:[String]) -> String?{
    
    let data = try? JSONEncoder().encode(array)
    
    return data?.base64EncodedString()
    
}


let array = ["a","b","c"];

if let string = convertJsonToArray(array: array){
    
    print(string)
}




