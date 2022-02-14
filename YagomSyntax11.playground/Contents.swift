import Cocoa

// 옵셔널 값 추출 - 옵셔널 바인딩, 강제 추출

// Optional Binding - 옵셔널 바인딩
// 옵셔널의 값을 꺼내오는 방법 중 하나.
// nil 체크 + 안전한 값 추출.

func printName(_ name: String) {
   print(name)
}


// var myName: String? = nil
// printName(myName)
// 전달되는 값의 타입이 다르기 때문에 컴파일 오류 발생.



var myName: String! = nil

if let name: String = myName {
    printName(name)
} else {
    print("myName == nil")
}

 

// ,를 사용해서 여러 옵셔널 타입을 바인딩 할 수 있다.

var myName1: String? = "Jun"
var yourName1: String? = nil

if let name = myName1, let friend = yourName1 {
    print("\(name) and \(friend)")
}
// yourName이 nil이기 때문에 실행되지 않는다.

yourName1 = "Yuri"

if let name = myName1, let friend = yourName1 {
    print("\(name) and \(friend)")
}
// Jun and Yuri




// Force Unwrapping - 강제 추출
// 옵셔널의 값을 강제로 추출.

func printName2(_ name: String) {
    print(name)
}

var myName2: String? = "Jun"

printName2(myName2!)
// !를 붙이면 옵셔널의 값을 강제로 추출.
// Jun

// myName2 = nil
// print(myName2!)
// 강제 추출시 값이 없으므로 런타임 오류 발생.

// var yourName2: String! = nil
// printName2(yourName2)
// nil 값이 전달되기 때문에 런타임 오류 발생.
