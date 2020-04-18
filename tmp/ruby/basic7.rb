# % を使った記法
# ============================================

# ダブルクオーテーションと同じ動作

puts "hello"
puts %Q(hello)
puts %(hello)

puts ["red", "blue"]
puts %W(red blue)

# シングルクオーテーションと同じ動作

puts 'hello'
puts %q(hello)

puts ['red', 'blue']
puts %w(red blue)

# 使い方
# ============================================

# 文字列に「"」を使いたいとき
puts "he\"llo"
puts 'he\'llo'

# %記法なら以下のようにかけるので見やすい
puts %Q(he"llo)
puts %(he"llo)
puts %q(he'llo)
