# README

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
- has_one   :nextprogram

## nextprogramsテーブル

| Column   | Type       | Options                        |
|----------|------------|--------------------------------|
| schedule | date       | null: false                    |
| show     | string     | null: false                    |
| stage    | string     | null: false                    |
| author   | string     | null: false                    |
| actor    | references | null: false, foreign_key: true |

### Association

- belongs_to :actor