# RSpecの基本的な構文や便利な機能を理解する

参考：https://qiita.com/jnchito/items/42193d066bd61c740612

## describe / it / expect の役割を理解する

```ruby
describe '四則演算' do
  it '1 + 1 は 2 になること' do
    expect(1 + 1).to eq 2
  end
end
```

### describe

`describe`はテストのグループ化を宣言する。
日本語にすると、「～を述べる」「～を説明する」「～を記述する」という意味。
`describe '四則演算'`の文字列の部分はそれだけでなく`describe User`のようにクラスも渡せます。

### it

`it`はテストを`example`という単位にまとめる役割をします。
`it do ... end`の中のエクスペクテーション（期待値と実際の値の比較）がすべてパスすれば、その`example`はパスしたことになる。

### expect

`expect(X).to eq Y`で記述するのがエクスペクテーション。
`expect`には「期待する」という意味があり、`expect(X).to eq Y`は「XがYに等しくなることを期待する」と読めます。
よって、 expect(1 + 1).to eq 2 は「1 + 1 が 2 になることを期待する」テストになる。

