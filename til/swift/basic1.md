# Swiftの基礎1

## 変数

### イミュータブルな変数「let」

書き換えられんよ

```swift
let immutableStr = "hello"
immutableStr += " world" // error
```

### ミュータブルな変数「var」

書き換えられるよ

```swift
var mutableStr = "hello"
mutableStr += " world" // ok
```

### 型推論

明示的に型を宣言しない場合は型推論になる

```swift
var str = "string"
var int = 100
```

### 型宣言

```swift
var mutableStr: String = "string"
```

### 型の暗黙変換

型の暗黙変換はされないので変換してあげる

```swift
let label = "This year is "
let year = 2019
let thisYear = label + String(2017)
```

### 文字列内での変数展開

```swift
let year = 2019
let nextYear = "Next year is \(year + 1)"
```

## 配列

```swift
var itemsArray = ["foo", "bar", "baz"]

// 型宣言する場合
var itemsArray: [String] = ["foo", "bar", "baz"]
```

## ディクショナリ（Dictionary型）

["キー": "値"]のように記します。

```swift
var itemsDictionary = [
  "foo": "FOO",
  "bar": "BAR",
  "baz": "BAZ"
]

// 型宣言する場合
var itemsDictionary: [String: String] = [
  "foo": "FOO",
  "bar": "BAR",
  "baz": "BAZ"
]
```

## 式

### if else

```swift
if true == true {
  print("true")
} else {
  print("false")
}
```

### forループ

```swift
let list = [3, 7, 9, 12, 8, 5]
for number in list {
  print("number \(number)")
}
```

### whileループ

```swift
var number = 1
while number < 10 {
  print(number)
  number += 1
}
```

### switch case

rubyみたいなRangeオブジェクトが使える

```swift
let age = 17
switch age {
case 0...6:
  print("kindergarden kid")
case 7...12:
  print("primary school student")
case 13...15:
  print("junior high school student")
case 16...18:
  print("high school student")
case 19...22:
  print("college student")
default:
  print("business person")
}
```
