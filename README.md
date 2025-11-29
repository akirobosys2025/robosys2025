# robosys2025
このリポジトリはロボットシステム学の授業で課題提出を行うためのものです.

![test](https://github.com/akirobosys2025/robosys2025/actions/workflows/test.yml/badge.svg)
## 目次
- 導入方法
- plus
- prime
- 開発環境
- LICENSE
## 導入方法
次の手順でリポジトリをインストールできます．  
```
# インストールしたいディレクトリで行う．
$ git clone git@github.com:akirobosys2025/robosys2025.git
```
## plus
標準入力した数字の列を全て足した値を標準出力します．  
<例>
```
$ seq 5 | ./plus
10
```
## prime
課題1，標準入力した整数を素因数分解し，全ての素因数を行で標準出力します．  
<例>
```
# 素因数を持たない数字を入力した場合は値を返さない
$ echo 1 | ./prime

$ echo 30 | ./prime
2 3 5 
$ echo 60 | ./prime
2 2 3 5
```
<パイプで繋いで使する例>
```
# ./primeは行で標準出力するので必要に応じて列に変えてください
$ echo 30 | ./prime | tr ' ' '\n' | ./plus
10
```
## 開発環境
- OS： Ubuntu 22.04.5 LTS
- Python： 3.10.12
- 動作テストVer. ：   
	- Python: 3.7  
	- Python: 3.8  
	- Python: 3.9  
	- Python: 3.10  
## LICENSE
- このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます．
- このパッケージは，[ryuichiueda](https://github.com/ryuichiueda/slides_marp/tree/master/robosys2025)由来のコード（© 2025 Ryuichi Ueda）を利用しています．
- このパッケージのコードは，下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）のものを，本人の許可を得て自身の著作としたものです．
	- [ryuichiueda/my_slides robosys_2025](https://github.com/ryuichiueda/slides_marp/tree/master/robosys2025)
- © 2025 Aki Moto
