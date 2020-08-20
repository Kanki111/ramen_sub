# ramen_app

DockerやRuby、Ruby on Railsを用いてramenを紹介する投稿アプリを作成しました。
普段、数十人でLINEを用いてお勧めのラーメン屋さんや、食べたラーメンの画像や感想を送っていたことが不便に感じて制作をしました。

## 必要なソフトウェア

* Docker 18 以上
* Git 2.7 以上

## 動作確認済みのOS

* macOS
* Ubuntu


## 設定ファイル等の取得


## コンテナ群の構築

```
% setup.sh
```

## コンテナ群の起動

```
% docker-compose up -d
```

## Web コンテナにログイン

```
% docker-compose exec web bash
```

※ ログアウトするには `exit` コマンドを実行するか、`Ctrl-D` キーを入力してください。

## コンテナ群の停止

```
% docker-compose stop
```

## コンテナ群の破棄

```
% docker-compose down
```
