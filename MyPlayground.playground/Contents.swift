import UIKit

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








