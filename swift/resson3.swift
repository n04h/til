/* ***********************
 * Swiftの基本構文
 * Optional型
 * ***********************/

// Swiftの言語仕様の特徴として、nilを安全に扱うためにOptionalという型が存在する
// 変数をOptional型で定義しない限り、変数にnilを代入することはできない

// Optional Int
var optionalInt: Int? = 5
var optionalInt: Optional<Int> = 5 // こうも書ける
// 通常のInt
var int: Int = 5

// Optional String
var optionalStr: String? = "hello"
var optionalStr: Optional<String> = "hello" // こうも書ける
// 通常のString
var str: String = "hello"

// Optional Stringの変数にnilを代入
optionalStr = nil
// 通常のStringにはnilを代入できない
str = nil  // => error: nil cannot be assigned to type 'String'