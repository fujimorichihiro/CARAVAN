# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

CARAVAN memo

・model : Blog
 *カラム title:string
       catgory:string
       body:text
・controller
 blogs
・view
 topページ(CARAVANページ)
 blog投稿フォーム
 blog詳細ページ（（タイトル,categoroy,本文）データの取得、詳細の表示、編集、削除ボタン→リダイレクトtopページ）
・rooting
 get 詳細ページ、ブログ記事情報の取得(title,category,body)

 finished