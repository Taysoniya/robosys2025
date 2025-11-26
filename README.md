# robosys2025
ロボットシステム学の講義用リポジトリ

# c-newline-add

標準入力からC言語のソースコードを読み込み、セミコロンや中括弧の後ろで改行を入れて見やすくするコマンドです。

## 機能
*詰め込まれたC言語のコードを標準入力から受け取ります。
*';' '{' '}' の直後に改行を挿入します。
*成形されたコードを標準出力へ出します。

## インストール
このリポジトリをクローンしてください。

```bash
$git clone [https://github.com/Taysoniya/robosys2025.git$](https://github.com/Taysoniya/robosys2025.git$) cd robosys2025
'''
実行権限が付与されてない場合は、以下のコマンドを実行してください。
```bash
$ chmod +x c-newline-add
'''
# 使い方の例

## 基本的な使い方
標準入力からテキストを流し込みます。
'''bash
echo 'void func(){;}' | ./c-newline-add
'''
## ファイルの内容を整形する場合
catコマンドと組み合わせます。
'''bash
cat main.c | ./c-newline-add
'''
## 出力をファイルに保存する場合
リダイレクトを使用します。
'''bash
cat main.c | ./c-newline-add > formatted_main.c
'''
# 注意点(Limitations)

本ツールは正規表現を用いた簡易的なフィルタです。構文解析（パース）は行わないため、以下の制限があります。
*for(i=0; i<10; i++) のようなループ文中のセミコロンも強制的に改行されます。
*文字列リテラル内の記号（例: printf("Error: ;")）も区別せずに処理されます。

# ライセンス
- このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます．
- このパッケージは，robosys2025由来のコード（© 2025 Ryuichi Ueda）を利用しています．
- このパッケージのコードは，下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）のものを，本人の許可を得て自身の著作としたものです．
    - [ryuichiueda/my_slides robosys_2025](https://github.com/ryuichiueda/slides_marp/tree/master/prob_robotics_2025)
- © 2025 Obata Yuuto
