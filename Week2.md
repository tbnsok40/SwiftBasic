## Week2.

### 13. 구조체

> ### 구조체와 클래스
- 데이터를 용도에 맞게 묶어 표현하고자 할 때 용이한 객체
- 프로퍼티와 메서드를 사용하여 구조화된 데이터와 기능을 가진다.
- 사용자만의 새로운 데이터 타입을 만들어 주는 것 (ex. Likelion 구조체, 멤버 프로퍼티, 커리큘럼 프로퍼티, 세션 메서드 등)

```swift
타입을 정의하는 역할
struct 이름{
 구현부
}
```
- 구조체 정의
```swift
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
```

- 구조체 사용 : 구조체의 인스턴스는 값 

```swift
// 가변 인스턴스
var mutable: Sample = Sample()
mutable.mutableProperty = 200 // 가변 프로퍼티는 값 재할당 가능, 불변 프로퍼티는 불가능

Sample.typeProperty = 300
Sample.typeMethod()
```


```swift
struct Student {
    var name: String = "unknown"
    var `class` : String = "Swift" // `class` 자체는 예약어 이기 때문에 강세표시 사용
    
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
```

<hr/>
<br/>

### 14. 클래스


- 구조체는 값타입, 클래스는 참조타입
- 스위프트의 클래스는 다중상속 불가하다.

```swift
class 이름{
    구현부
}
```


```swift
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
```

- 클래스 사용: 클래스 인스턴스는 참조 타입

```swift
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
jina2.selfIntroduce() // 저는 Swift반 jina입니다.
```

