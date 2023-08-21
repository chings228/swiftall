import UIKit

var greeting = "Hello, playground"


print("dfsdfsdf")




func waitSeconds() async{
    
    
    
}


enum GHError : Error{
    
    case allcaseerror
}


func getAnswer() async throws -> String{
    
    let endpoint = "https://api.github.com/users/sallen0400"
    
    guard let url = URL(string: endpoint) else {throw GHError.allcaseerror}
    
    
    let (data,_) =  try await URLSession.shared.data(from: url)
    
    
    guard let string =  String(data: data, encoding: .utf8) else {throw GHError.allcaseerror}
    
    
    return string
    
    
}


if  let  answer =  try? await getAnswer() {
    
    print(answer)
}




