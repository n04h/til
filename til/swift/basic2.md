# Swiftの基礎2

## 関数（メソッド）

```swift
func greet(expression: String, person: String) -> String {
  return "\(expression) \(person)."
}

// 関数の呼び出し
greet(expression: "Hello", person: "Mike")  // => "Hello Mike."

// アンダースコアを使うと、関数呼出し時に名前付き引数のラベルを省略できる
func greet(_ expression: String, person: String) -> String {
  return "\(expression) \(person)."
}
greet("Hello", person: "Mike")  // => "Hello Mike."
```

## クロージャ

```swift
func incrementer() -> ( () -> Int ) {
  var count = 0
  func increment() -> Int {
    count += 1
    return count
  }
  return increment
}

var counter = incrementer()
counter()  // => 1
counter()  // => 2
counter()  // => 3
```

このクロージャ機能により、Swiftではmap、filter、reduce等のメソッドに、引数として無名関数のブロックコードを渡して処理することができる

```swift
var numbers = [3, 7, 9, 12, 8, 5]
// 配列の要素をすべて2倍にする
numbers.map({ (number: Int) -> Int in return number * 2 })  // => [6, 14, 18, 24, 16, 10]

// 奇数のみを抽出する
numbers.filter({ (number: Int) -> Bool in return number % 2 == 1 })  // => [3, 7, 9, 5]

// すべての合計を計算する
numbers.reduce(0, { (total: Int, number: Int) -> Int in
  return total + number
})  // => 44
```

## クラス

```swift
class MyApp {
  // Shapeクラスの定義
  class Shape {
    // nameプロパティ（インスタンス変数）
    var name: String

    // イニシャライザ（コンストラクタ）
    init(name: String) {
      self.name = name
    }
  }

  // 四角形: RectangleがShapeを継承
  class Rectangle: Shape {
    var width: Double
    var height: Double

    init(name: String, width: Double, height: Double) {
      self.width = width
      self.height = height
      // 親クラスのイニシャライザ呼び出し
      super.init(name: name)
    }

    func area() -> Double {
      return width * height
    }
  }

  // 三角形: TriangleがShapeを継承
  class Triangle: Shape {
    var bottom: Double
    var height: Double

    init(name: String, bottom: Double, height: Double) {
      self.bottom = bottom
      self.height = height
      super.init(name: name)
    }

    func area() -> Double {
      return bottom * height / 2.0
    }
  }
}

// 正方形を作成
var square = MyApp.Rectangle(name: "My Square", width: 7.5, height: 7.5)
square.name    // => "My Square"
square.area()  // => 56.25

// 三角形を作成
var triangle = MyApp.Triangle(name: "My Triangle", bottom: 10, height: 8)
triangle.name    // => "My Triangle"
triangle.area()  // => 40
```
