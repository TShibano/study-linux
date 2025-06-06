# Chapter00 はじめに

## 本資料の目的，対象者

本資料は，Linuxをユーザとして使用する者向けに作成したものである．
Linuxと聞くと，「黒い画面上でコマンドを入力して操作する，難しそう」や「そもそもWindowsやMacと何が違うのか」と感じる者も多い．
しかし，会社に入社し開発部門などに配属されると，「このツールはLinuxサーバ上でしか動作しない」という場合がある．
そのような場合，Linuxを使う必要が生じる．
そのような場合でも，社員一人一人に自分用のLinuxコンピュータが与えられることはほとんどなく，1つのサーバを複数人で使用することが多い．
その場合，開発を担当する者の多くはLinuxの使い方を知っていれば十分である．
サーバの運用や管理方法は必要になってから学ぶことで十分である．

サーバを利用する環境では，マウス操作(GUI; graphical user interface)は利用できず，黒い画面にコマンドを入力する(CUI; character user interface)必要になる場面に遭遇することがある．
そのような場合に，黒い画面やコマンドによる操作に恐怖心を持たず，Linuxを操作できるようになることを目標に勉強を進めてほしい．
コンピュータ技術の基礎を学ぶには，まず実際に手を動かすことが重要であると考える．
頭で考えて理解することも重要であるが，実際に手を動かし，どのような結果が得られるかを体験することは使い方を学ぶ上で非常に効果的である．
したがって，読むだけでなく，実際にLinux環境を整え，コマンドを入力し結果を確認することを推奨する．

## 本資料の注意点

本資料では，下記のようにコマンドを表記する．
その際，ユーザ自身の環境に合わせて記述する部分は`<>`で区切って表記する．

```bash
cp <コピー元> <コピー先>
```

Ubuntu22.04を用いてコマンドの動作を確認している．
そのため，異なるバージョンや異なるOS(ディストリビューション)では，使用するコマンドや出力結果が異なる可能性がある点に注意すること．