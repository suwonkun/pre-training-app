トピックに対して、投稿ができるように実装する。

※レイアウトに関しては、コメントアウトしています。
該当ファイル：topics/show.html.erb

動作動画:https://www.loom.com/share/8684d956952e4c7e89c69729527ec749

1.投稿のpostモデルを作成
2.マイグレーションの実行（カラムはname,body。外部キーにtopic_idを指定）
3.postコントローラーの作成
4.コントローラー内メソッド記述（index,create)
