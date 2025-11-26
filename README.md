# robosys2025
ロボットシステム学の講義用リポジトリ

# c-newline-addコマンド

[![test](https://github.com/Taysoniya/robosys2025/actions/workflows/test.yml/badge.svg)](https://github.com/Taysoniya/robosys2025/actions/workflows/test.yml)

標準入力からC言語のソースコードを読み込み、セミコロンや中括弧の後ろで改行を入れて見やすくするコマンドです。

## 実行例
詰め込まれたコードが、以下のように出力されます。

```
$ echo 'int main(){printf("Hello");return 0;}' | ./c-newline-add
int main(){
printf("Hello");
return 0;
}
```
## 機能
* セミコロン`;`の後ろで改行
* 左中括弧`{`の後ろで改行
* 右中括弧`}`の後ろで改行
* 連続する不要な空行の除去

## 必要な環境
* Python
    * テスト済みバージョン:3.10
* Ubuntu 22.04.5 LTS

## インストール方法
リポジトリをクローンします。

```
$ git clone https://github.com/Taysoniya/robosys2025.git
```
ディレクトリに移動します
```
$ cd robosys2025
```
実行権限が付与されてない場合は、以下のコマンドを実行してください。
```
$ chmod +x c-newline-add
```
## 使い方の例

## 基本的な使い方
標準入力からテキストを流し込みます。
```
$ echo 'void func(){;}' | ./c-newline-add
```
出力結果
```
void func(){
;
}
```
### ファイルの内容を整形する場合
`cat`コマンドと組み合わせます。
```
$ cat main.c | ./c-newline-add
```
### 出力をファイルに保存する場合
リダイレクトを使用します。
```
$ cat main.c | ./c-newline-add > formatted_main.c
```
# 注意点

本ツールは正規表現を用いた簡易的なフィルタです。構文解析（パース）は行わないため、以下の制限があります。
* `for(i=0; i<10; i++)` のようなループ文中のセミコロンも強制的に改行されます。
* 文字列リテラル内の記号（例:` printf("Error: ;")`）も区別せずに処理されます。

# ライセンス
- このソフトウェアパッケージは,3条項BSDライセンスの下,再頒布および使用が許可されます。
- なお、(test.bash)および(.github/workflows)は、下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）のものを，本人の許可を得て参考にして自身の著作としたものです。
    - [ryuichiueda/my_slides robosys_2025](https://github.com/ryuichiueda/my_slides/tree/master/robosys_2025)
- © 2025 Obata Yuuto
