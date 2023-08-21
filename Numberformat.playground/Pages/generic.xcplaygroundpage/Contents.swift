//
//
//
//
//
//func compare<T:Comparable>(_ a:T ,_ b:T) -> Bool{
//
//    return a>b
//
//}
//
//
//class Person:Comparable{
//    var age: Int
//
//    init(age: Int) {
//        self.age = age
//    }
//
//    public static func < (lhs: Person, rhs: Person) -> Bool{
//        lhs.age < rhs.age
//    }
//
//    public static func == (lhs: Person, rhs: Person) -> Bool{
//        lhs.age == rhs.age
//    }
//
//
//
//}
//
//
//var p1 = Person(age:12)
//
//print(p1)
//
//var p2 = Person(age:25)
//
//print(p2)
//
//compare(p1,p2)
//
//
//struct Haha{
//
//    var age : Int
//    var name : String
//}
//
//var p3 = Haha(age:13,name:"Tom")
//
////p3.age = 14
//
//print(p3.age)
////
//struct Person:Comparable{
//
//
//
//    var name : String
//    var age : Int
//
//    static func < (lhs: Person, rhs: Person) -> Bool {
//        return lhs.age < rhs.age
//    }
//
//    static func > (lhs: Person, rhs: Person) -> Bool {
//        return lhs.age > rhs.age
//    }
//
//    static func == (lhs: Person, rhs: Person) -> Bool {
//        return lhs.age == rhs.age
//    }
//}
//
//class Personc{
//    var name : String
//    var age : Int
//
//    init(name:String,age:Int){
//        self.name = name
//        self.age = age
//    }
//}

var any1 : Any
var any2 : Any

any1  = 12
any2  = 34

var num1 = any1 as! Int
var num2 = any2 as! Int

if( num1 > num2){ print("larger") }else{ print("smaller") }

