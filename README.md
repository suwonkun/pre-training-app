トピックの詳細画面でトピックに対して、名前と、本文を入力して投稿ができるように実装する。

トピックの詳細画面でトピックに対しての投稿が全て表示させるようにする。


※レイアウトと一部に関しては、コメントアウトしています。適宜コメントアウトを解除して、実装してください。
該当ファイル：topics/show.html.erb、topics_controller.rb

動作動画:https://www.loom.com/share/8684d956952e4c7e89c69729527ec749

### 開発フロー 

1.投稿のpostモデルを作成

2.マイグレーションの実行（カラムはname,body。外部キーにtopic_idを指定）

3.postコントローラーの作成

4.コントローラー内メソッド記述（index,create)

indexでtopicに紐づく投稿を全件表示できるようにする。createでtopicに紐づく投稿を作成する。

参考ER図：https://gyazo.com/c1e6ed6af37dd6043578021640605f13
