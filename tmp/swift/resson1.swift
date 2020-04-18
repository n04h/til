/* ***********************
 * Swiftの基本構文
 * 変数、配列、ディクショナリの定義、制御構造
 * ***********************/

// イミュータブルな変数「let」
let immutableStr = "hello"
immutableStr += " world" // error

// ミュータブルな変数「var」
var mutableStr = "hello"
mutableStr += " world" // ok

// 明示的に型を宣言しない場合は型推論になる
var str = "string"
var int = 100

// 型を宣言する場合は以下の通り
var mutableStr: String = "string"

// 型の暗黙変換はされない
let label = "This year is "
let year = 2019
let thisYear = label + String(2017)

// 文字列内での変数展開
let nextYear = "Next year is \(year + 1)"

// 配列（Array型）の定義
var itemsArray = ["foo", "bar", "baz"]

// 配列の型を明示
var itemsArray: [String] = ["foo", "bar", "baz"]

// ディクショナリ（Dictionary型）の定義
// ["キー": "値"]のように記します。
var itemsDictionary = [
  "foo": "FOO",
  "bar": "BAR",
  "baz": "BAZ"
]

// ディクショナリの型を明示
var itemsDictionary: [String: String] = [
  "foo": "FOO",
  "bar": "BAR",
  "baz": "BAZ"
]

// if else
if true == true {
  print("true")
} else {
  print("false")
}

// forループ
let list = [3, 7, 9, 12, 8, 5]
for number in list {
  print("number \(number)")
}

// whileループ
var number = 1
while number < 10 {
  print(number)
  number += 1
}

// switch case
// rubyみたいなRangeオブジェクトが使える
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
