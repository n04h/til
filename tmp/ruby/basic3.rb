# ! - 破壊的なメソッドと呼ばれている
# upcase  : 文字列を大文字にしたものを返すだけ
# upcase! : 文字列を大文字にしたものを返しつつ、もとの文字列も大文字にする

name = 'tarou'
puts name.upcase
puts name

puts name.upcase!
puts name

# ? - 真偽値を返すメソッド
# empty?   : 文字列オブジェクトが空かどうか
# include? : 文字列に特定の文字が含まれているかどうか

p name.empty? # false
p name.include?('A') # true
