
import Foundation

func postdata(){
    
    // Encode your JSON data
    //let jsonString = "{ \"command\" : \"sdm.devices.commands\", \"params\" : { \"commandName\" : \"cmdValue\" } }"
    
    
    let jsonString = "aaabbbb=cccccc&dddd=eeekkeeee"
    guard let jsonData = jsonString.data(using: .utf8) else { return }
    
    
    
    
    print(jsonData)
    
    // Send request
    guard let url = URL(string: "https://usa.1328.hk/swiftest.php") else {return}
    
    var request = URLRequest(url: url)
    request.httpMethod = "POST"
    request.httpBody = jsonData
    
    request.setValue("application/json", forHTTPHeaderField: "Content-Type")
    //request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
    
    request.setValue("token", forHTTPHeaderField: "Authorization") // Most likely you want to add some token here
    // request.setValue("Bearer \(accessToken)", forHTTPHeaderField: "Authorization")
    
    let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
        if let error = error {
            // Handle HTTP request error
            
        } else if let data = data {
            // Handle HTTP request response
            print(data.description)
            
            guard let outputStr  = String(data: data, encoding: String.Encoding.utf8) else {return}
            print(outputStr)
           
        } else {
            // Handle unexpected error
        }
    }
    task.resume()
    
    
    
}


//postdata()


func convertArrayToString(array:Array<Any>)->String{

    let data = try? JSONSerialization.data(withJSONObject: array)
    guard let string = NSString(data: data!, encoding: NSUTF8StringEncoding) else {return ""}
    return string as String
}

let array = [ "one", "two" ]

print(convertArrayToString(array: array))



let dictionary = ["2": "B", "1": "A", "3": "3"] 
let encoder = JSONEncoder()
if let jsonData = try? encoder.encode(dictionary) {
    if let jsonString = String(data: jsonData, encoding: .utf8) {
        print(jsonString)
    }
}


func convertDictionaryToString<T>(array:[T:T])->String{
    
    let encoder = JSONEncoder()
    let jsonData = try? encoder.encode(dictionary)
        guard let string = String(data: jsonData!, encoding: .utf8) else {return ""}

        return string as String

    
}


print(convertDictionaryToString(array: dictionary))


//
//func convertDictionaryToStringGeneric(array:[Any]:Encodable,Hashable)->String{
//
//    let encoder = JSONEncoder()
//    let jsonData = try? encoder.encode(array)
//        guard let string = String(data: jsonData!, encoding: .utf8) else {return ""}
//
//        return string as String
//
//
//}

//let aa = [["k","d"],"c"]
//print(convertDictionaryToStringGeneric(array: aa))



func swapTwoInts(_ a:Any,_ b:Any)->(Any,Any){
    
    return (b,a)
}

swapTwoInts("a",4)


func swapTwoGeneric<T>(a:T,b:T) -> (T,T){
    
    return (b,a)
}
//
//swapTwoGeneric(a: 3,b: 4)
//swapTwoGeneric(a: "b", b: "c")
//
//swapTwoGeneric(a: "c", b: "b")
//
//
//
//func compare<T:Comparable>(a:T,b:T)->Bool{
//    
//    return a<b
//}
//
//compare(a: 1, b: 3)
//compare(a:1,b:"b")
