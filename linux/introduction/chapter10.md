# Chapter10 シェルスクリプト

本章ではシェルスクリプトについて簡単に紹介する．シェルスクリプトとは一連のシェル操作をテキストファイルに記述したものである．シェルスクリプトを用いることで一連のコマンド入力を自動化できる．10.1ではシェルスクリプトの作成から実行までの流れを紹介する．10.2ではシェルスクリプトの文法について基本的な部分を説明する．

## 10.1 シェルスクリプトの作成と実行

まずはシェルスクリプトを作成し，実行するまでの流れを紹介する．

- 拡張子が`.sh`となるファイルを作成する．
- 1行目には利用するシェルを指定し，2行目以降に実行するコマンドを1行ずつ書く．
- シェルスクリプトを記述したファイルに実行権限を付与する．
- `./<file>.sh`として実行する．

### ファイルの作成

vi等のエディタを使い，拡張子は`.sh`とする．

```bash
vi file.sh    # viを使ってfile.shを作成する
```

### シェルスクリプトの記述

1行目には利用するシェル(シェバン)を記述し，2行目以降に実行するコマンドを記述する．実行コマンドは1行ずつ入力する．

1行で書ききれない場合は`\`(バックスラッシュ)を用いる．また，シェルスクリプト中でコメントを書く場合，`#`以降がコメントとなる．

```bash
#!/bin/bash    # シェバンという，ここではbashを用いる
whoami
ls
date
```

### 実行権限の付与

`chmod`を使って実行権限を付与する．

```bash
chmod u+x <file>.sh
```

### シェルスクリプトの実行

`./`を付けてファイルを指定する．`./`はパス指定を意味し，「カレントディレクトリにある」という意味である．今まで使ってきた`ls`や`whoami`などはすでにパスが通っているためこのような指定は不要だが，自分で作成したシェルスクリプトを実行する場合はパス指定が必要となる．

```bash
./<file>.sh
```

## 10.2 シェルスクリプトの文法

ここからはシェルスクリプトの文法を簡単に紹介する．他にも多くの文法があるが，ここでは基本的なものだけを紹介する．

### 変数

変数とは値を格納するための箱のようなもので，数値や文字列が入る．数学で用いるxやyをイメージすると分かりやすい．

変数の代入は`=`を使い，変数の中身を参照するには`$<変数名>`とする．変数の代入時，`=`の前後に空白をあけてはいけない．

```bash
hoge=ABC
echo $hoge    # ABC
```

シェルには2種類の変数がある．

- シェル変数
    - 実行中のシェルの内部のみで有効
    - シェル変数の作成には`=`を用いて代入するだけでよい
    - シェル変数の一覧確認は`set`コマンドを用いる
    - シェル変数を削除する場合は`unset`コマンドを用いる
- 環境変数
    - 環境変数はその変数を定義したシェル上とそのシェルで実行されるプログラムで有効
    - 環境変数の作成には`export`を用いる
    - 環境変数の一覧確認は`env`コマンドを用いる
    - 環境変数を削除する場合は`unset`コマンドを用いる

```bash
c=shell_var
export d=env_var
echo $c
echo $d
bash
echo $c    # 表示されない
echo $d
exit
echo $c
echo $d
```

### 引用符

シェルスクリプトでは引用符は3種類ある．それぞれ引用符に囲まれた文字列の扱いが異なる．また，引用符は入れ子が可能である．

- `'`(シングルクォート)
    - `$`付き文字列はそのまま文字列として扱われ，変数は展開されない
- `"`(ダブルクォート)
    - `$`付き文字列は変数が展開された文字列となる
- `` `(バッククォート) ``
    - コマンドとして解釈され，変数が展開された上でコマンドが実行される

```bash
hoge=date
echo '$hoge'    # $hoge
echo "$hoge"    # date
echo `$hoge`    # dateコマンドが実行され，今の日付が表示される
```

### 引数

シェルスクリプトは実行時にオプションを引数として参照できる．引数は`$1, $2, ...`のように，`$`の後に引数の番号を指定して参照する．

### エスケープ文字

`\`は特別な文字で，下記のような機能を持つ．

- シェルスクリプト中で`"`は引用符を意味するが，`\"`とすることでダブルクォートの文字として扱うことができる
- 行末に`\`を用いることで改行できる
- `\t`でタブ，`\n`で改行を意味する

### 条件分岐

`if`を用いることで条件分岐を行うことができる．次の書式となる．

```bash
if <条件式1> then
    処理
elif <条件式2> then
    処理
else
    処理
fi
```

条件式には文字列の比較や数値比較，ファイル属性の確認などがある．

文字列の比較

| 演算子 | 比較内容 |
| --- | --- |
| `a == b` | `a`と`b`が等しければ真 |
| `a != b` | `a`と`b`が等しくなければ真 |

数値の比較

| 演算子 | 比較内容 |
| --- | --- |
| `a -eq b` | `a=b`ならば真 |
| `a -ne b` | `a!=b`ならば真 |
| `a -ge b` | `a>=b`ならば真 |
| `a -le b` | `a<=b`ならば真 |
| `a -gt b` | `a>b`ならば真 |
| `a -lt b` | `a<b`ならば真 |

ファイル属性の確認

| 演算子 | 確認内容 |
| --- | --- |
| `[ -f <file名> ] ;` | 通常ファイルなら真 |
| `[ -d <file名> ] ;` | ディレクトリなら真 |
| `[ -e <file名> ] ;` | ファイルが存在するなら真 |
| `[ -x <file名> ] ;` | ファイルが存在し，実行権限があれば真 |

ファイル属性の確認には`[ ]`以外にも`test`コマンドを用いる方法もある．

### 繰り返し

`for`文は値を列挙し，それを対象に処理を繰り返す．

```bash
for <変数> in <値のリスト>
do
    処理
done
```

例えば，以下のように記述する．

```bash
for al in a b c d e
do
    echo $al
done
```

### 関数

関数は引数と呼ばれるデータを与え，処理をして結果を返す機能である．次の書式で書く．

```bash
function <関数名> {
    処理
    引数は$1, $2を用いる
}
```

関数を実行する場合，次の書式で記述する．

```bash
<関数名> <引数1> <引数2>
```

例えば，以下のような関数を定義し，実行する．

```bash
function hello {
    echo "Hello, $1"
}
```

```bash
hello Tom   # Hello, Tom
hello Bob   # Hello, Bob
```