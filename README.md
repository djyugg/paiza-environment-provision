# paiza-environment-provision
Paizaの[各言語実行環境](http://paiza.jp/guide/language)をVM上で再現する。

## 対応予定言語
- [x] Bash(apt-getで取得可能な最新版)
- [x] Java
- [x] node.js
- [x] PHP(apt-getで取得可能な最新版)
- [x] Python(apt-getで取得可能な最新版)
- [x] Ruby
- [ ] Scala

## 利用方法
1. Virtual Boxをインストール。
2. Vagrantをインストール。(Vagrant CloudからBoxを取得するためバージョン1.5以上必須)
3. gitでcloneまたはgithubからzipをダウンロードして、リポジトリをローカルに持ってくる。
4. リポジトリのルートで`vagrant up`コマンドを実行。

Vagrantの実行が完了すれば、Paizaの実行環境を再現した環境が立ち上がっています。  

## License
MIT
