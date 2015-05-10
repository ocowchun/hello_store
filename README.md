#Hello Store
練習基本的sql操作

這是一個簡單的資料庫系統,用來記錄每間店的營業資料
每間店會有訂單
每筆訂單會記錄銷售金額
每間店會屬於一個分區


##使用方式
###建立資料庫
```bash
$ rake db:migrate
$ rake db:seed
```

###進入console操作
```bash
$ rails dbconsole
```

MIT
