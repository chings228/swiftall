import UIKit

var greeting = "Hello, playground"



print(greeting)



func convertJsonToArray<T:Codable>(array:T) -> String?{
    var jsonString = ""
    
    do{
        let data = try JSONEncoder().encode(array)
        
        print(data)
        
        if let  ss =  String(data: data, encoding: .utf8){
            
            print(ss)
        
            jsonString = ss
        }
        
    }catch{
        print(error.localizedDescription)
        }

    return jsonString
}


let array = [1,2,3];


struct testobj : Codable{
    
    let val : Int
    let str : String
}


let newobjs :[testobj] = [testobj(val: 12, str: "sdfsdf"),testobj(val: 12, str: "fsfsdffds")]


//let newobjs = [1,23,33]


//if let string = convertJsonToArray(array: newobjs){
//
//    print(string)
//}


enum Constants{
    static let somevalue = "dsfsdfsdf"
    static let somenotstatic = "swerewr"
    static let password = 342343424
}

print(Constants.somevalue)
print(Constants.somenotstatic)
print(type(of: Constants.password))
