//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

Int.max

print(type(of: 123))

var array1: [String] = [String]()
array1.append("iPhone6")
array1 += ["iPhone6s"]

var dict1: [String : String] = [String : String]()
dict1["iPhone6s"] = "docomo"
dict1["iPhone7"] = "au"
dict1


var value: String? = nil  //Optional型

value = "Apple"
if let v = value {
    print(v)
}

print(value!)  // force unwrapしない！

let newValue = value ?? "" //valueがnilでない->そのまま, nilなら""代入
print(newValue)

var value2: String! = nil //ImplicitlyUnwrappedOptional型
value2 = "Grape"
print(value2)  //nilならエラー


/*---------メソッド------------------------------------
func メソッド名(引数名: 型) -> 戻り値の型 {
    //処理
}
*/
print("メソッド")

func show(year: Int){
    print("\(year)年10月11日")
}
show(year: 2017)

func show2(firstTimetravelYear year: Int) { //別名を引数にできる。
    print("\(year)年10月26日")
}
show2(firstTimetravelYear: 1985)

//---------クラス---------------------------------
print("class")

class Dog {
    var name: String = ""
    func bark(){
        print("わんわん")
    }
}


let bob = Dog()
bob.name = "ボブ"
bob.bark()

class PoliceDog: Dog{
    override func bark() {
        super.bark()
        print("逮捕")
    }
    
    func arrest() { //class内でpropertyにアクセスしたい時は、self.property or property
        print("\(self.name)は犯人を捕まえた")
        print("\(name)は犯人を捕まえた")
    }
}

extension PoliceDog {
    func yes(){
        print("yes")
    }
}

let green = PoliceDog()
green.name = "green"
green.arrest()
green.yes()

//------struct---------
//クラスと似ているが、継承はできない。

print("struct")

struct Person {
    var name: String
    var age: Int
    
//    mutating func comesBirthday() {  //自身のpropertyにアクセスする時は、mutatingをつける。
//        age += 1
//    }
    init(){ //initializa
        name = "tom"
        age = 19
    }
}

extension Person {
    func introduce() {
        print("私は\(name)です。\(age)歳です。")
    }
}

//var tom = Person(name: "tom", age: 19)
var tom = Person()
print(tom.name)
print(tom.age)
//tom.comesBirthday()
print(tom.age)
tom.introduce()

class Person1 {
    var name: String = ""
    var age: Int = 19 {
        willSet {
            print("\(age)から\(newValue)に変わります")  //新しく入る値がnewValue
        }
        didSet {
            print("\(oldValue)から\(age)に変わりました") //前のageの値がoldValueになる。
        }
    }
}

var tommy = Person1()
tommy.age = 20
tommy.age = 21


class Person2 {
    var name: String = ""
    private(set) var _age: Int = 19 //setterはprivateなので外からアクセスできない。
    
    var age: Int {
        set{
            self._age = newValue
        }
        get{
            return self._age
        }
    }
}

var riki = Person2()
print(riki._age)
//riki._age = 20 error: cannot assign to property: '_age' setter is inaccessible
riki.age = 20
print(riki._age)


//enum generics

enum MyOptional<T> {
    case none
    case some(T)
}

let value3: MyOptional<String> = .some("optinal value")
print(value3)

let value4: MyOptional<Int> = .some(1)
print(value4)

if case .some(let Int) = value4{
    print(Int)
}

if case .some(let string) = value3 {
    print(string)
}

//タプル

let item: (name: String, price: Int, tax: Double, total: Int) = ("iPhone7 128GB", 83800, 0.08, 90504)
print("商品: \(item.name)")
print("税抜き価格: \(item.price)")
print("消費税: \(item.tax)")
print("合計: \(item.total)")


//-----ループ

(0..<10).forEach({ i in
    print(i)
})


for i in (0..<10).reversed() {
    print(i)
}


enum Fruit {
    case apple, orange
}

let fruits: [Fruit] = [.apple, .orange, .apple, .orange]
//Appleのときのみ処理を行う
//for case .apple in fruits {
//    print("りんごです")
//}
//Appleのときのみ処理を行う
for fruit in fruits where fruit == .apple {
    print("りんごです")
}




