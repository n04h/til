# Flutter の豆知識

## 自動フォーマット

以下のようなコードは１行にまとめられていてわかりづらいが、

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Center(child: Text('Hello World'))));
}
```

`,`を入れてあげれば自動フォーマットが勝手に

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Center(child: Text('Hello World'),),),);
}
```

以下のようにフォーマットしてくれる

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Center(
        child: Text('Hello World'),
      ),
    ),
  );
}
```

※Dart のプラグインを入れていることが前提

## エクスプレッション構文・アロー構文の変換

`main()`の後ろで[Option + Enter]を押下すると以下のようなプルダウンが出て変換できる

![image](images/expression_arrow_convert.png)
