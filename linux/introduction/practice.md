# 練習問題

確認問題を解く前に下記の下準備として，各自のホームディレクトリに `setup.sh` というファイルを格納しています．

# 確認問題

1. 正しいユーザでサーバに接続していますか？今ログインしているユーザを確かめてください．
2. 自分が今いるディレクトリを表示してください．
    1. もしホームディレクトリにいない場合移動してください．
3. `setup.sh` 実行してください．パーミッションに注意しましょう．
4. 実行後， `~/linux-study-quize` というディレクトリができているので，そのディレクトリに移動してください
5. `~/linux-study-quize` ディレクトリにあるすべてのファイル一覧を長い形式で表示してください．
6. `gzip.tar.gz` はtarアーカイブをgzipで圧縮したファイルです． `tar` コマンドを用いて展開してください．
    1. ファイル作成の方法は， `tar zcvf gzip.tar.gz gzip` です．
    2. 展開したディレクトリ (gzip) の中のファイルを確認してください．
7. `~/linux-study-quize` 以下のどこかのディレクトリに `secret.txt` というファイルがあります．コマンドを使って探してください．
8. `secret.txt` ファイルを `dri2/dir2_2` ディレクトリに移動してください．
9. 移動した `secret.txt` ファイルの名前を `known.txt` という名前に変更してください．
10. `knwon.txt` に書かれている内容を読んでください．どのコマンドを使っても良いです．
11. vimを使って， `known.txt` ファイルを編集してください．
12. ディレクトリを変更する際に， `pushd` と `popd` という便利なコマンドがあります． この2つのマニュアルを読んでみて実際に使ってみましょう
13. プロセスとジョブの違いを簡潔に述べてください．
14. 自分が実行しているプロセスを確認してください．
15. 実は `setup.sh` を実行した時に， `sleep` コマンドを実行するようにしていました．`sleep` コマンドに対して下記を実行してみてください
    1. プロセスIDを確認してください．この時 `ps` コマンドと `|` パイプと `grep` コマンドを使って `sleep` とかかれたものだけを抽出してください．
    2. `sleep` プロセスを `kill` コマンドを使って終了させてください．
16. シェル上で `sleep 8h &` と入力してください．
    1. 実行中のジョブを確認してください．
    2. ジョブ番号を使ってフォアグラウンドで実行してください
    3. キー入力により`sleep` コマンドを中断してください．
    4. ジョブ番号を使ってバックグラウンドで実行してください．
    5. ジョブ番号を使って `kill` コマンドでジョブを終了させてください．
17. ホームディレクトリに戻り， `~/linux-study-quize` ディレクトリを削除してください．このディレクトリはすべて削除してよいので， `rm` コマンドに適切なオプションをつけて削除してください．
18. 下記の条件を満たす正規表現を回答してください
    1. ○○島という単語をアルファベット表記した時，”shima”，”jima”，”to” があります(細かいローマ字表記の揺れは省略)．これらを表す正規表現を考えて下さい．ただし，島という一文字はないとしてください．
    2. 母音 (a,i,u,e,o) から始まって，母音で終わる8文字の文字列 (数字や記号も含む)
    3. 日本の郵便番号 (ただし，ハイフンがあるケースとないケースの両方が考えられる場合)