//import UIKit

// 02. 명명법, 콘솔로그, 문자열 보간법
var str = "Hello, playground"
print(str)
print("my fucking first SWIFT")

let age: Int = 1993
let name: String = "임성후"
print("안녕 난 \(age)년생 \(name)라고 해")


class Lim{
    var name: String = "Sunghoo"
    var age: Int = 29
}

let hoo: Lim = Lim()

print(hoo) // 단순 문자열 출력

dump(hoo) // dump 로 찍으면 클래스 내부 필드와 값을 정확히 파악할 수 있다.
// 인스턴스의 자세한 설명(description property)까지 출력


class LikeLion9{
    var name: String = "LikeAppD"
    var number: Int = 5
}

let lion: LikeLion9 = LikeLion9()
dump(lion)



// 03. 상수와 변수

// 불변 객체를 중요시 하는 언어
// 상수: let
// 변수: var

let constant: String = "변하지 않는 사자"
var variable: String = "변하는 사자"

// 값의 타입이 명확하다면 생략 가능 => 명확히 적어주는 것이 더 좋다.

//constant = "호랑이" // 변경 할 수 없다고 에러메시지 출력됨

// 나중에 할당하는 상수나 변수는 타입을 꼭 명시해주어야한다.
let sum: Int
let inputA: Int = 100
sum = 200
print(sum)

// 할당되지 않은 변수를 프린트 하는 것도 에러 출력 => 꼭 초기화를 해주어야한다.


// 04. Swift 기본 데이터 타입

// bool
var someBool: Bool = true
someBool = false

// Int
var someInt: Int = -100

// UInt (부호가 없는 정수 => 부호도 강타입으로 잡아버리네. 데이터타입에 엄격한 언어)
var someUInt: UInt = 100


// float => 부동 소수
var someFloat: Float = 3.15
someFloat = 3

// Double => Float과는 다르다 =>에러 발생
var someDouble: Double = 3.14
someDouble = 3


// Character => 오직 문자 '하나'!
var someCharacter: Character = "임"

// String
var someString: String = "성후"

// 불가능 => Swift 에서 데이터타입을 변경하는 것은 거의 불가능하다고 본다.
//someString = someString + someCharacter

print(someString)


// Any, AnyObject, nil

//Any - Swift 의 모든 타입을 지칭하는 키워드
//AnyObject - 모든 클래스 타입을 지칭하는 프로톹콜
//nil - 없음을 나타내는 자료형

// Any
var someAny: Any = 100
someAny = "어떤 타입도 수용 가능"

// 이런건 불가
//let someDouble: Double = someAny

// AnyObject
class SomeClas{}
var someAnyObject: AnyObject = SomeClas()

// 클래스 인스턴스가 아닌 실수값을 넣기 때문에 에러
//someAnyObject = 123.12

// nil : 없음을 의미하는 키워드
//someAny = nil // <= 어떤 값도 들어올 수 있지만(any) 빈값은 들어올 수 없다
//someAnyObject = nil

// 그럼 nil 은 어디서 필요한가? => Optional 에서 알아보자.





// 06 컬렉션 타입
// array - 순서 O 리스트 컬렉션
// dictionary - key-value 쌍으로 이루어진 컬렉션
// set - 순서가 없고, 멤버가 유일한 컬렉션

var integers: Array<Int>  = Array<Int>() // 빈 배열을 만들고 싶으면 괄호를 비운다.
integers.append(1)
integers.append(100)
integers.append(200)
//integers.append(99.1)

integers.contains(100)
integers.contains(99)

integers.remove(at: 1)
integers.removeLast()
integers.removeAll()

integers.append(200)
integers.count


// Array<Double> 와 [Double] 는 동일한 표현
// 빈 Double Array 생성
var doubles: Array<Double> = [Double]()

// 빈 Character Array 생성
var characters: [Character] = []

// let 을 사용하여 Array 를 선언하면 불변 Array
let immutableArray = [1, 2, 3]
// immutableArray.remove(at: 1) //  불가능


// Dictionary
var anyDictionary: Dictionary<String, Any> = [String: Any]()
anyDictionary["someKey"] = "value"
anyDictionary["anotherKey"] = 100
anyDictionary
anyDictionary["someKey"] = "anotherValue"
anyDictionary

// same expression
anyDictionary.removeValue(forKey: "anotherKey")
anyDictionary["anotherKey"] = nil
anyDictionary


let emptyDictionary : [String: String] = [:]
let initalizedDictionary : [String: String] =
    ["name" : "yagom", "gender": "male"]


// 이미 let 으로 선언됐기 때문에 수정 불가
//emptyDictionary["key"] = "value"

// 딕셔너리의 value 값이 optional 할 수 있기 때문에, ?? 를 붙여준다.
//let initValue :String = initalizedDictionary["name"]
let initValue :String?? = initalizedDictionary["name"]



// swift 가 이렇게 엄격한 타입 캐스팅을 고수하는 이유가 무엇일까


// Set
var integerSet: Set<Int> = Set<Int>()
integerSet.insert(1)
integerSet.insert(1)
integerSet.insert(99)
integerSet.insert(99)

integerSet
integerSet.contains(1)
integerSet.contains(2)

integerSet.remove(1)
integerSet.removeFirst()
integerSet.count

let setA: Set<Int> = [1, 2, 3, 4, 5]
let setB: Set<Int> = [5, 6, 7, 8, 9, 10]

let union: Set<Int> = setA.union(setB) // 합집합

let sortedUnion: [Int] = union.sorted()
// set 을 정렬 (index가 없다) => 배열로 casting 한다 [Int]

let intersection: Set<Int> = setA.intersection(setB) // 교집합
let subtracting: Set<Int> = setA.subtracting(setB) // 차집합


// 07. 함수 기본

// 함수의 선언
// func 함수이름(매개변수 이름:매개변수 타입) -> 타입 {함수 구현부 return 반환 값}
func sum (a:Int, b: Int) -> Int {
    return a + b
}

// 리턴이 없는 함수
func printMaName(name: String) -> Void{ // Void 도 생략 가능
    print(name)
}

func maxIntegerValue() -> Int{
    return Int.max
}

// 함수가 간단한 경우
func bye() { print("bye")}

let sumValue: Int = sum(a: 5, b: 1)
print(sumValue)


printMaName(name: "Lim")

maxIntegerValue()

bye()


// 08. 함수 고급
// 매개변수 기본값 -> 기본값을 갖는 매개변수는 매개변수 목록 중에 뒤쪽에 위치하는 것이 좋다

func greeting(friend: String, me: String = "Lim"){
    print("hello \(friend)! I'm \(me) ")
}

// 매개변수는 기본 값을 가지는 매개변수는 생략할 수 있다.
greeting(friend: "BongJu")

// 전달 인자 레이블
// 매개변수의 역할을 좀 더 명확하게 하거나, 함수 사용자의 입장에서 표현하고자 할 때 사용.
// to, from 이 전달인자 레이블, friend, me 가 매개변수 이름
func greeting2(to friend: String, from me: String){
    print("Hello \(friend), I'm \(me) !")
}


//greeting2(friend: "Kim", me: "Lim")
greeting2(to: "Kim", from: "Lim")
// 함수를 호출할 때는 전달인자 레이블을 사용해야한다.


// 가변 매개변수 -> 전달받을 값의 개수를 알기 어려울 때 사용할 수 있다.
// 가변 매개변수는  함수당 하나만 가질 수 있다.
func sayHelloToFriends(me: String, friends: String ...) -> String{
    return "Hello \(friends) ! I'm \(me) ! "
}
print(sayHelloToFriends(me: "LIM", friends: "Kim", "Jeon", "Han"))


// 스위프트는 함수형 프로그래밍 패러다임을 포함

// 반환타입을 생략할 순 없다.

var someFunction: (String, String) -> Void = greeting2(to:from:)
someFunction("Lim", "KIM")


someFunction = greeting(friend:me:)
someFunction("Crossfit", "Holix")
// 매개변수가 가변이라면 someFunction에 할당할 수 없다 -> 타입이 다르니까

// Q. 레이블의 용도가 무엇인가?




// 09.  if - else

let someInteger = 100
if someInteger < 100 {
    print("100 미만")
}else if someInteger > 100 {
    print("100 초과")
}else {
    print(100)
}

// 조건에는 항상 bool 타입이 들어와야 한다.
// if 0 {} , if 1 {} 이런거 안된다. (JS, python 은 가능 ㅠ)

// Switch

switch someInteger {
case 0:
    print("zero")
case 100:
    print("hundred")
default: // default 구문을 꼭 작성해주어야 한다.
    print("unknown")
}
// 명시적으로 break 문을 써준지 않아도 된다.
// 스위치 문에도 정수외의 대부분 기본 타입을 사용 가능


// 10. 반복문

var integerss = [1, 2, 3]
let people = ["yagom": 10, "Lim": 15]

for integer in integerss{
    print(integer)
}


for (name, age) in people {
    print("\(name) , \(age)")
}

// while
while integerss.count > 1 {
    integerss.removeLast()
}


// repeat - while
// repeat 구문이 먼저 실행 후, while 조건을 체크하여 repeat을 실행여부를 결정
repeat{
    integerss.removeLast()
}while integerss.count > 0


// 11. Optional

// why 옵셔널 필요할 까

// nil 의 가능성을 명시적으로 표현 -> 문서/ 주석 작성 시간 절약
// 전달받은 값이 옵셔널이 아니라면, nil 체크를 하지 않더라도 안심하고 사용
// 효율적인 코딩, 예외 상황을 최소화하는 안전한 코딩.

// 옵셔널은 열거형과 제너럴의 합작품

// 암시적 추출 옵셔널 -> nil 을 할당할 수 도 있다. but nil 할당 이후 특정값 추가하면 에러 발생
var optionalValue: Int! = 100
switch optionalValue {
case .none:
    print("this optional variable is nill")
case .some(let value):
    print("value is \(value)")
}


// 기존 변수처럼 값교환, 연산 등 제한된다. nil 할당은 가능
var optionalValue2: Int? = 100
switch optionalValue2 {
case .none:
    print("this optional variable is nill")
case .some(let value):
    print("value is \(value)")
}


// 12. Optional unwrapping
// optional binding
// 옵셔널 값을 꺼내오는 방법중 하나 =>  nil 체크 + 안전한 값 추출
// 옵셔널은 값을 보호해주는 막이 하나 있다고 생각 (열거형 타입의 막)
// if -let 방식으로 옵셔널 바인딩을 해준다.
var myName: String? = "yagom"
var yourName: String? = nil

if let name = myName, let friend = yourName {
    print("\(name) and \(friend)")
} // yourName이  nil 이기 때문에 실행되지 않는다.

yourName = "LIM"
if let name = myName, let friend = yourName {
    print("\(name) and \(friend)")
} // yagom and LIM


// force unwrapping: 옵셔널의 값을 강제로 추출 -> 추천되는 방식 x
// 보호막을 강제로 깨부수고 가져온다.


func printName(_ name: String){
    print(name)
}
var limsName: String? = "LIM"
printName(limsName!) // LIM

limsName = nil // nil declare

//print(limsName!) // 강제 추출 시 값이 없으므로 런타임 오류 발생

var yourName2: String! = nil
print(yourName2)
// 경고 메시지 뜨게 된다.

