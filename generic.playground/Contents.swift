import UIKit

var greeting = "Hello, playground"


func highestnumber<T:Comparable>(a:T,b:T){
    
    if a>b{
        print("a is bigger")
    }
    else{
        print("b is bigger")
    }
}

highestnumber(a: 13.5, b: 13)


func whatTypeisIt<T>(input: T) -> String{
    
    print("the type is \(type(of: input))")
    return "OK"
}


whatTypeisIt(input: [[1:"aa"]])
whatTypeisIt(input: "sdfdsfdf")


func add<T:Numeric>(_ num1:T,_ num2:T){
    
    print(num1 + num2)
}
add(7,8.0)

