# 配列について
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

p colors