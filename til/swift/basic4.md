# Swiftの基礎4

## Optional型をアンラップする4つの方法

Optional型はnilを扱える変数にラップ(wrap)されている型になる
値を扱えるようにするため「アンラップ（unwrap）」する

```swift
// アンラップしないとエラーになる
var optionalStr: String? = "hello"
optionalStr.uppercased()  // => error: value of optional type 'String?' not unwrapped
```

Optional型の変数をアンラップ処理するには、4つの方法がある

1. Optional Binding
1. Optional Chaining
1. Forced Unwrapping
1. ImplicitlyUnwrappedOptional型

### Optional Binding

代表的な方法でifやguardを使ってアンラップする

#### ifをつかったOptional Bindingのコード例

```swift
func hello() -> String {
  let optionalStr: String? = "hello"
  if let unwrappedStr = optionalStr {
    return unwrappedStr.uppercased()
  }
  return ""
}

print( hello() )  // => HELLO
```

#### guardを使ったOptional Bindingのコード例

※guardは関数の中でしか使えません

```swift
func helloWithGuard() -> String {
  let optionalStr: String? = "hello"
  guard let unwrappedStr = optionalStr else {
    return ""
  }
  return unwrappedStr.uppercased()
}

print( helloWithGuard() )  // => HELLO
```

### Optional Chaining

アンラップした変数の型のメソッドを呼び出したい場合に使う方法

Optinal型の変数の後ろに?.を付けて、メソッド呼び出しを書く
変数がnilでない場合はメソッド呼び出しの結果を、nilの場合はnilを返す
Rubyの（&.）と似た働きをする

```swift
var optionalStr: String?
optionalStr?.uppercased()  // => nil
optionalStr = "hello"
optionalStr?.uppercased()  // => "HELLO"
```

### Forced Unwrapping

文字通り強制的にアンラップを行う方法

T?型の変数の後ろに!を付けることで変数を強制的にアンラップする
絶対にnilではない場合のみ使用する必要がある（エラーでアプリが落ちてしまうことがあるため）

```swift
var optionalStr: String? = "hello"
optionalStr!.uppercased()  // => HELLO
```

### ImplicitlyUnwrappedOptional型

この変数はメソッド呼び出しの際に通常の型と同じような呼び出し方で書ける
ただしメソッド呼び出し時「Forced Unwrapping」同様に絶対にnilにならないようにする必要がある

```swift
var implicitlyStr: String!  // nil
implicitlyStr = "hello"     // "hello"
implicitlyStr.uppercased()  // => "HELLO"
```
