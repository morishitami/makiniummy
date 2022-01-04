# Makinium My

札幌の劇団「演劇集合体マキニウム」の参加者が、自分の情報を確認するアプリです。  
自分のこれまでの頑張りを確認することができます。

# URL
https://makiniummy.herokuapp.com/

## テスト用アカウント

Basic認証  

アプリの閲覧にはこちらのアカウントをご利用ください。  
俳優番号：999  
パスワード：aadd33

# 制作した経緯
演劇集合体マキニウムでは、近年役者の成果が出しにくくなっている、モチベーションが保ちづらくなっている課題があります。その原因は、実力に見合った自信を持てていない、またそれにより表現力が伸ばしづらくなっていることと分かってきました。  
そこで、劇団で管理している過去のアンケート集計結果や、独自に編み出した演技理論の学習度を手元で可視化することで、自らの実績を再認識し、自信に繋げようと考え、パソコンで手軽に実績を確認できるサイトを作成しました。

# このサイトで可能なこと
・劇団から取得した俳優番号を用いたユーザー登録、ログイン、ログアウト  
・自分の俳優としてのランク、過去の実績等の閲覧  
・演技理論問題の回答状況の確認、更新  
・演技理論解説動画及び問題への遷移（劇団が別途アプリケーションにて許可しているユーザーのみ閲覧可能です。）  
・俳優ページの作成・編集

# デモ
### マイページ
[![Image from Gyazo](https://i.gyazo.com/bc90453439daf83318e09cc18f512fb2.png)](https://gyazo.com/bc90453439daf83318e09cc18f512fb2)

### 俳優成績一覧
![56e804c8c71820a94fc4300289a15ccd](https://user-images.githubusercontent.com/93413391/148045550-d34aba90-3e1f-4746-a9eb-6bdf0420f699.gif)

### 演技理論問題回答状況
[![Image from Gyazo](https://i.gyazo.com/0f316de35ed0d52e1b711cc5a7ff71d8.jpg)](https://gyazo.com/0f316de35ed0d52e1b711cc5a7ff71d8)

### 俳優ページ
[![Image from Gyazo](https://i.gyazo.com/a354fca44e963aec956b3f33c1097d08.gif)](https://gyazo.com/a354fca44e963aec956b3f33c1097d08)

### 実装予定の機能
・スタッフ実績の閲覧 
・俳優ページの公開化

### 開発環境
・フロントエンド：HTML,CSS  
・バックエンド：Ruby(ver 2.6.5) / Ruby on Rails(ver 6.0.4.1)  
・プラットフォーム：Heroku(ver 7.59.2)  
・テスト：RSpec  
・テキストエディタ：Visual Studio Code  
・タスク管理：GitHubプロジェクトボード  


# テーブル設計

## usersテーブル

| Column             | Type   | Options                   |
|--------------------|--------|---------------------------|
| code               | string | null: false               |
| name               | string | null: false               |
| stage_name         | string |                           |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |

### Association

- has_one  :method
- has_many :staffs
- has_one  :actor

## questionsテーブル

| Column  | Type       | Options                        |
|---------|------------|--------------------------------|
| q1      | boolean    | null: false                    |
| q2      | boolean    | null: false                    |
| q3      | boolean    | null: false                    |
| q4      | boolean    | null: false                    |
| q5      | boolean    | null: false                    |
| q6      | boolean    | null: false                    |
| q7      | boolean    | null: false                    |
| q8      | boolean    | null: false                    |
| q9      | boolean    | null: false                    |
| q10     | boolean    | null: false                    |
| q11     | boolean    | null: false                    |
| q12     | boolean    | null: false                    |
| q13     | boolean    | null: false                    |
| q14     | boolean    | null: false                    |
| q15     | boolean    | null: false                    |
| q16     | boolean    | null: false                    |
| q17     | boolean    | null: false                    |
| q18     | boolean    | null: false                    |
| q19     | boolean    | null: false                    |
| q20     | boolean    | null: false                    |
| q21     | boolean    | null: false                    |
| q22     | boolean    | null: false                    |
| q23     | boolean    | null: false                    |
| q24     | boolean    | null: false                    |
| q25     | boolean    | null: false                    |
| q26     | boolean    | null: false                    |
| q27     | boolean    | null: false                    |
| q28     | boolean    | null: false                    |
| q29     | boolean    | null: false                    |
| q30     | boolean    | null: false                    |
| q31     | boolean    | null: false                    |
| q32     | boolean    | null: false                    |
| q33     | boolean    | null: false                    |
| user    | references | null: false, foreign_key: true |

### Association

- belongs_to :user

## staffsテーブル

| Column | Type       | Options                        |
|--------|------------|--------------------------------|
| genre  | string     | null: false                    |
| show   | string     | null: false                    |
| stage  | string     | null: false                    |
| user   | references | null: false, foreign_key: true |

### Association

- belongs_to :user

## actorsテーブル

| Column  | Type       | Options                        |
|---------|------------|--------------------------------|
| comment | text       |                                |
| user    | references | null: false, foreign_key: true |

### Association

- belongs_to :user

