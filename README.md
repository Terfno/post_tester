# post_tester
curlでjsonをpostする練習用。

* Docker 19.03

## 使い方
### 準備
```sh
$ cd <任意のディレクトリ>
$ git clone https://github.com/Terfno/post_tester
$ cd post_tester
$ make build
```

### 起動
```sh
$ make run
```

### POST
Makeで雑にテストする。
```sh
$ make post
```

curlでJSONをPOSTしてみる。
```sh
$ curl -X POST http://localhost:3000/ -H "Accept:application/json" -H "Content-type:application/json" --data '{"github":"https://github.com/terfno","Twitter":"https://twitter.com/terfno_mai"}'
```

### 結果
POSTするとserverから`sent`と返ってくる。
また、serverはPOSTされるとJSONの内容を表示する
```sh
$ make logs
```
