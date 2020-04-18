# オブジェクトの変換について

x = 100
y = '20'

p x + y.to_i # integerに変換
p x + y.to_f # floatに変換
p x.to_s + y # stringに変換


# ハッシュと配列の相互変換について

scores = {a: 20, b: 50}

p scores.to_a # arrayに変換
p scores.to_a.to_h # hashに変換
