# robosys2025
- このリポジトリはロボットシステム学の授業で課題提出を行うためのものです．  
- primeは素因数分解を行うためのコマンドです．  
- このリポジトリのコマンドはGitHub ActionsでPython 3.7，3.8，3.9，3.10での動作テストを行っています．

![test](https://github.com/akirobosys2025/robosys2025/actions/workflows/test.yml/badge.svg)

## 目次
- 導入方法
- prime ･･･ 素因数分解を行うコマンド
- 開発環境
- LICENSE

## 導入方法
次の手順でリポジトリをダウンロードできます．  
```
# ダウンロードしたいディレクトリで行う．
$ git clone git@github.com:akirobosys2025/robosys2025.git
```

## prime
課題1，標準入力した整数を素因数分解し，全ての素因数を行で標準出力します．  
数論や科学計算に用いて下さい．   
<例>
```
# 素因数を持たない数字を入力した場合は値を返さない
$ echo 1 | ./prime

$ echo 30 | ./prime
2 3 5 
$ echo 60 | ./prime
2 2 3 5
```

## 開発環境
- OS: Ubuntu 22.04.5 LTS
- 開発言語: Python 3.10

## LICENSE
- このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます．
- このパッケージの一部は，[上田隆一の講義資料](https://github.com/ryuichiueda/slides_marp/tree/master/robosys2025)由来のコード（© 2025 Ryuichi Ueda）を利用しています．
- © 2025 Aki Moto
