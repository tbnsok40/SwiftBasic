## Basic Swift

> ### 02. 명명법, 콘솔로그, 문자열 보간법

- 명명법

```swift
var str = "Hello, playground"
print(str)
>>> Hello, playground
```

- 문자열 보간법

지정한 변수를 문자열로 출력하려면, \(변수명) 형식을 사용하여 출력한다.

```swift
let age: Int = 2021
let name: String = "임성후"
print("안녕 난 \(age)년생 \(name)라고 해")
>>> 안녕 난 2021년생 임성후라고 해

```

<br/>

- 클래스 지정

`let 변수명 : 클래스 타입 = 클래스명()` : 인스턴스화 하여 변수에 할당한다.

> - 클래스를 출력하는 2가지 방법

- print() : 단순 문자열 출력, 클래스 내부 필드 출력 X
- dump() : 클래스 내부 필드와 값을 정확히 파악 가능, 인스턴스의 자세한 설명(description property)까지 출력.

```swift

class Lim{
    var name: String = "Sunghoo"
    var age: Int = 29
}

let hoo: Lim = Lim()

print(hoo) // 단순 문자열 출력
>>> __lldb_expr_1.Lim

dump(hoo)
>>> ▿ __lldb_expr_1.Lim #0
  - name: "Sunghoo"
  - age: 29
```

```swift
class LikeLion9{
    var name: String = "LikeAppD"
    var number: Int = 5
}

let lion: LikeLion9 = LikeLion9()
dump(lion)

>>> __lldb_expr_1.LikeLion9 #0
  - name: "LikeAppD"
  - number: 5
```

> ### 03. 상수와 변수

- 불변 객체를 중요시 하는 언어
  > - 상수: let
  > - 변수: var

```swift
let constant: String = "변하지 않는 사자"
var variable: String = "변하는 사자"
```

- 값의 타입이 명확하다면 생략 가능 => 하지만, 명확히 적어주는 것이 더 좋다.

```swift
constant = "호랑이" // 변경 할 수 없다고 에러메시지 출력, let 으로 정의했기 때문


// 값이 할당되지 않은 상수/변수는 타입을 꼭 명시해주어야한다.
let sum: Int
let inputA: Int = 100
sum = 200
print(sum)
>>> 200
```

- 할당되지 않은 변수를 프린트 하는 것도 에러 출력 => 꼭 초기화를 해주어야한다.
