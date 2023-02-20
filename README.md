# 課題1
### 概要

トピックを作成できるように実装する。
既存のコードでは動作しないので、動作するよう改修して実装を行っていく

完成動画:https://www.loom.com/share/67f5c4534900454e8c9de2adeb073265

### 開発フロー
1.トップページを表示させる

2.トピックの作成

課題：topicが空で作成できないようにバリデーションを設定してください

3.トピックの削除ができる


# 課題2
### 概要

トピックの詳細画面でトピックに対して、名前と、本文を入力して投稿ができるように実装する。

トピックの詳細画面でトピックに対しての投稿が全て表示させるようにする。


※topics_controllerに関しては、コメントアウトしています。適宜コメントアウトを解除して、実装してください。

該当ファイル：topics_controller.rb

完成動画:https://www.loom.com/share/8684d956952e4c7e89c69729527ec749

### 投稿モデルについて 

投稿Model名: Post
カラム名: name, body

### Topic詳細ページのレイアウトについて
以下のコードを作成したpotic詳細ページのviewに貼り付けてください
```
<h1><%= @topic.title %></h1>

<% @posts.each_with_index do |post , idx| %>
  <p>
    <%= idx + 1 %>. <%= post.name %> : <%= post.body %>
  </p>
<% end %>

<h3>新規書き込み</h3>
<%= form_for @newpost, :url => posts_create_path do |f| %>
  <p>お名前</p>
  <p><%= f.text_field :name %></p>
  <p>本文</p>
  <p><%= f.text_area :body %></p>
  <%= f.hidden_field :topic_id %>
  <%= f.submit %>
<% end %>

<%= link_to root_path do %>
<button>戻る</button>
<% end %>
```


### 完了報告手順

1.トピックの削除が前と同じようにできているか確認

2.コミットしてプッシュする

3.プルリクエストを作成し、ペアに報告する（プルリクの内容はなんでもOKです）

### ER図

参考ER図：https://gyazo.com/c1e6ed6af37dd6043578021640605f13
