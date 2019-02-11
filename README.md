# post_tester
curlでjsonをpostする練習用の鯖

## 使い方
### 起動
```
$ node server.js
running

```

### POST
curlでJSONをPOSTしてみる
```
$ curl -X POST http://localhost:3000/ -H "Accept:application/json" -H "Content-type:application/json" --data '{"github":"https://github.com/terfno","Twitter":"https://twitter.com/terfno_mai"}'

```

### 結果
POSTするとserverから`sent`と返ってくる
```
$ curl -X POST http://localhost:3000/ -H "Accept:application/json" -H "Content-type:application/json" --data '{"github":"https://github.com/terfno","Twitter":"https://twitter.com/terfno_mai"}'
sent

```
またserverはPOSTされるとJSONの内容を表示する
```
$ node server.js 
running
posted
{ github: 'https://github.com/terfno',
  Twitter: 'https://twitter.com/terfno_mai' }
```

