# Rubyの基本構文

## 出力

```ruby
# 改行なし
print 'hello world'

# 改行あり
puts 'hello world'

# デバッグ用(データの型などがわかりやすい)
p 'hello world'
```

## コメント

```ruby
# 1行コメント

=begin
複数行
複数行
複数行
=end
```

## 変数

英小文字かアンダースコアで定義する([a-z]_)

```ruby
aaaa = "hey"
_aaa = "hey"
```

## 定数

英大文字で定義する

```ruby
AAA = "hey"
```

## !について

破壊的なメソッドと呼ばれている

upcase ... 文字列を大文字にしたものを返すだけ
upcase! ... 文字列を大文字にしたものを返しつつ、もとの文字列も大文字にする

```ruby
name = 'tarou'
puts name.upcase
# TAROU
puts name
# tarou

puts name.upcase!
# TAROU
puts name
# TAROU
```

## ?について

真偽値を返すメソッド

```ruby
p name.empty? # false
p name.include?('A') # true
```

## 配列

```ruby
colors = ['red', 'blue', 'green', 'yellow', 'purple']

p colors[0] # 最初から red
p colors[-1] # 最後から purple
p colors[0..2] # 0~2の値を表示 [red, blue, green]
p colors[0...2] # 0~2の直前までの値を表示
p colors[10] # 範囲外の場合は nil になる

# 値の書き換え
colors[0] = 'change red'
colors[1..3] = ['change blue', 'change_green']

#値の追加
colors.push('white')

#値の追加(pushと同じ処理)
colors << 'black'
```

## ハッシュ

```ruby
# 全て同じ
# scores = {"a" => 100, "b" => 200}
# scores = {:a => 100, :b => 200}
scores = {a: 100, b: 200}

# 扱い方は配列とほぼ同じ
p scores[:a]
```

## オブジェクトの変換について

```ruby
x = 100
y = '20'

p x + y.to_i # integerに変換
p x + y.to_f # floatに変換
p x.to_s + y # stringに変換
```

## ハッシュと配列の相互変換について

```ruby
scores = {a: 20, b: 50}

p scores.to_a # arrayに変換
p scores.to_a.to_h # hashに変換
```

## %をつかった記法

ダブルクオーテーションと同じ動作

```ruby
puts "hello"
puts %Q(hello)
puts %(hello)

puts ["red", "blue"]
puts %W(red blue)
```

シングルクオーテーションと同じ動作

```ruby
puts 'hello'
puts %q(hello)

puts ['red', 'blue']
puts %w(red blue)
```

## 特殊文字について

文字列に「"」を使いたいとき

```ruby
```

%記法なら以下のようにかけるので見やすい

```ruby
puts %Q(he"llo)
puts %(he"llo)
puts %q(he'llo)
```
