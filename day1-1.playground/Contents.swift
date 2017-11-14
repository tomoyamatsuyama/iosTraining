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


func show(year: Int){
    print("\(year)年10月11日")
}
show(year: 2017)

func show2(firstTimetravelYear year: Int) { //別名を引数にできる。
    print("\(year)年10月26日")
}
show2(firstTimetravelYear: 1985)

//---------クラス---------------------------------

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

let green = PoliceDog()
green.name = "green"
green.arrest()







