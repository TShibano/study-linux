#!/bin/bash
# ディレクトリの作成
# echo "ディレクトリを作成"
mkdir -p ~/linux-study-quize
cd ~/linux-study-quize

# gzip
mkdir gzip
cd gzip
touch foo.txt bar.txt
cd ../
tar zcvf gzip.tar.gz gzip
rm -rf gzip
# tar zxf gzip.gz    解凍するコマンド


# find コマンド
cd ~/linux-study-quize
mkdir -p dir1/dir1_1 dir1/dir1_2 dir2/dir2_1 dir2/dir2_2
touch dir1/dir1_2/secret.txt
cd dir1/dir1_2
echo "私の好きなの漫画" > secret.txt
echo "ハクメイとミコチ" >> secret.txt
echo "ふらいんぐうぃっち" >> secret.txt
echo "鋼の錬金術師" >> secret.txt
echo "暗殺教室" >> secret.txt
echo "金色のガッシュベル" >> secret.txt
echo "好きな漫画を教えてください" >> secret.txt
# find ~/linux-study-quize -name secret.txt
# mv ~/linux-study-quize/dir1/dir1_2/secret.txt ~/linux-study-quize/dir2/dir2_2/
# cd dir2/dir2_2    # 移動してもしなくても良い
# mv secret.txt knwon.txt

# sleep
sleep 8h &
# jobs
disown %1

cd ~

# rm -rf ~/linux-study-quize/
