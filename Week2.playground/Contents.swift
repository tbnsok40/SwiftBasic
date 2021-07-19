
// 13. 구조체

// 타입을 정의하는 역할
// struct 이름{
// 구현부
// }

struct Sample {
    // 인스턴스 프로퍼티
    var mutableProperty: Int = 100 // 가변 프로퍼티
    let immutableProperty: Int = 100 // 불변 프로퍼티
    
    static var typeProperty: Int = 100 // 타입 프로퍼티
    
    // 인스턴스 메서드
    func instanceMethod() {
        print("instance method")
    }
    
    // 타입 메서드
    static func typeMethod() {
        print("type method")
    }
    
}


// 구조체 사용

// 가변 인스턴스
var mutable: Sample = Sample()
mutable.mutableProperty = 200 // 가변 프로퍼티는 값 재할당 가능, 불변 프로퍼티는 불가능

Sample.typeProperty = 300
Sample.typeMethod()


struct Student {
    var name: String = "unknown"
    var `class` : String = "Swift" // class 자체는 예약어 이기 때문에 강세표시 사용
    
    static func selftIntroduce(){
        print("학생타입입니다.")
    }
    
    func selfIntroduce() {
        print("\(self.class)반 \(name)입니다.")
    }
}

// Student.selfIntroduce() // 왜 에러ㅈ뜨지?
var Lim : Student = Student()
Lim.name = "LIM"
Lim.class = "LIKELION"
Lim.selfIntroduce()

let jina: Student = Student()
// jina.name = "jina" // compile 오류 발생, 불변 인스턴스(let) 이기 때문에 -> property값 변경 불가
jina.selfIntroduce() // 저는 LIKELION 반 unknown 입니다.



// 14. 클래스


// 구조체는 값타입, 클래스는 참조타입
//class 이름{
//    구현부
//}

// 스위프트의 클래스는 다중상속 불가하다.


class Sample2{
    
    var mutableProperty: Int = 100 // 가변 프로퍼티
    let immutableProperty: Int = 100 // 불변 프로퍼티
    
    // 재정의 불가능 타입 - static
    static func typeMethod(){
        print("상속 받았을 때 재정의 불가능")
    }
    // 재정의 가능 타입 - class
    class func classMethod(){
        print("상속 받았을 때 재정의 가능")
    }
}

var mutableRefernce : Sample2 = Sample2()
let immutableRefernce: Sample2 = Sample2()


// 내부 mutableProperty는 변경 가능
mutableRefernce.mutableProperty = 200
immutableRefernce.mutableProperty = 200


class Student2 {
    var name: String = "unknown"
    var `class` : String = "Swift" // class 자체는 예약어 이기 때문에 강세표시 사용
    
    static func selftIntroduce(){
        print("학생타입입니다.")
    }
    
    func selfIntroduce() {
        print("\(self.class)반 \(name)입니다.")
    }
}

// 이전 구조체에서는 let jina 인스턴스에 대해 프로퍼티 재할당이 불가능했지만, class 에서는 가능하다.
let jina2: Student2 = Student2()
jina2.name = "jina" // compile 오류 발생, 불변 인스턴스(let) 이기 때문에 -> property값 변경 불가
jina2.selfIntroduce() // 저는 LIKELION 반 unknown 입니다.


// 15. 열거형
// 유사한 종류의 여러값을 한 곳에 모아 정의한 자료형(enum 자체가 하나의 데이터 타입)

enum Weekday{
    case mon
    case tue
    case wed
    case thu, fri, sat, sun
}

var day = Weekday.mon
day = .tue
print(day)


switch day {
case .mon, .tue, .wed, .thu:
    print("weekday")
default:
    print("weekend")
}


// 열거형 - 원시값
// rawValue 를 사용하면 된다, case 별로 각각 다른 값을 가져야한다.
enum Fruit: Int{
    case apple = 1
    case grape // 2
    case peach // 3
}

print("\(Fruit.grape.rawValue)")

// 정수 타입뿐만 아니라, hashable 프로토콜을 따르는 모든 타입이 원시값의 타입으로 지정될 수 있따.


// 숫자와 달리 문자는 예상할 수 없기 때문에, case의 이름 그대로 가져오게 된다.
enum School: String{
    case elementary = "초등"
    case university
}

print("\(School.university)")

// rawValue 를 통해 초기화 할 수 있다.
// rawValue 가 case 에 해당하지 않을 수 있으므로, rawValue 를 통해 초기화 한 인스턴스는 옵셔널 타입이다.

let apple : Fruit? = Fruit(rawValue: 0)

if let orange: Fruit = Fruit(rawValue: 5){
    print("\(orange)")
} else{
    print("해당하는 케이스가 없다.")
}

enum Month {
    case dec, jan, feb
    case sep, oct, nov
    
    func printMsg(){
        switch self {
        case .dec, .jan, .feb:
            print("겨울")
        case .sep, .oct, .nov:
            print("가을")
        }
    }
}


Month.dec.printMsg()
Month.sep.printMsg()


// 16. 클래스 vs 구조체 / 열거형
// 클래스 : 단일 상속 , 참조 타입 , apple framework 의 대부분은 클래스로 구성
// Struct: 상속 불가, 값 타입, swift의 대부분의 큰 뼈대는 구조체로 구성
// enum : 값 타입, 상속 불가, 열거형 케이스 하나하나 전부 하나의 유의미한 값으로 취급

// 구조체는 언제 사용하나 => 침조가 아닌 복사를 원할 때, 상속 받을 필요가 없을 때.
// value : data 를 전달할 때 값 을 복사하여 전달
// reference: data 를 전달할 때 값의 메모리 위치를 전달.

struct valueType {
    var property = 1
}

class referType {
    var property = 1
}

let firstSturctInstance = valueType()
var secondStructInstance = firstSturctInstance
secondStructInstance.property = 2


print("first struct instance propert : \(firstSturctInstance.property)") //1
print("sec struct instance propert : \(secondStructInstance.property)") //2


let firstClassRef = referType()
var secondClassRef = firstClassRef
secondClassRef.property = 2

// 참조값이 복사되어 간다.
print("first class instance propert : \(firstClassRef.property)") //2
print("sec class instance propert : \(secondClassRef.property)") //2

// 스위프트는 구조체 , 열거형 사용 선호


// 웨않뒈?
struct SomeStruct{
    var someProps : String = "Property"
}

var someStructInstance: SomeStruct = SomeStruct()
func someFunction(structInstance: SomeStruct){
    var localVar : SomeStruct = structInstance
    localVar.someProps = "ABC"
}
print(someStructInstance.someProps) // Property


// 웨않뒈?
class SomeClass{
    var someProps : String = "Property"
}

var someClassInstance: SomeClass = SomeClass()
func someFunction2(classInstance: SomeClass){
    var localVar : SomeClass = classInstance
    localVar.someProps = "ABC"
}
//someFunction2(someClassInstance)
print(someClassInstance.someProps) // ABC


