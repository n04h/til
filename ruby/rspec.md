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
`describe '四則演算'`の文字列の部分はそれだけでなく`describe User`のようにクラスも渡せる。

### it

`it`はテストを`example`という単位にまとめる役割をします。
`it do ... end`の中のエクスペクテーション（期待値と実際の値の比較）がすべてパスすれば、その`example`はパスしたことになる。

### expect

`expect(X).to eq Y`で記述するのがエクスペクテーション。
`expect`には「期待する」という意味があり、`expect(X).to eq Y`は「XがYに等しくなることを期待する」と読めます。
よって、 expect(1 + 1).to eq 2 は「1 + 1 が 2 になることを期待する」テストになる。

## context と before でもう少し便利に

```ruby
describe User do
  describe '#greet' do
    before do
      @params = { name: 'たろう' }
    end
    context '12歳以下の場合' do
      it 'ひらがなで答えること' do
        user = User.new(@params.merge(age: 12))
        expect(user.greet).to eq 'ぼくはたろうだよ。'
      end
    end
    context '13歳以上の場合' do
      it '漢字で答えること' do
        user = User.new(@params.merge(age: 13))
        expect(user.greet).to eq '僕はたろうです。'
      end
    end
  end
end
```

### context

`describe`以外にも`context`という機能でテストをグループ化することができる。
どちらも機能的には同じだが、`context`は条件を分けたりするときに使うことが多い。
日本語で「文脈」や「状況」の意味。

### before

`before do ... end`で囲まれた部分は`example`の実行前に毎回呼ばれる。
`before`ブロックの中では、テストを実行する前の共通処理やデータのセットアップ等を行うことが多い。
`describe`や`context`がネストしている場合は、親子関係に応じて`before`が順番に呼ばれる。(親→子の順番)
