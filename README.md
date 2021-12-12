# README

# テーブル設計

## usersテーブル

| Column             | Type   | Options                   |
|--------------------|--------|---------------------------|
| code               | string | null: false               |
| name               | string | null: false               |
| stage_name         | string | null: false               |
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
| user    | references | null: false, foreign_key: true |

### Association

- belong_to :user

## staffsテーブル

| Column | Type       | Options                        |
|--------|------------|--------------------------------|
| genre  | string     | null: false                    |
| show   | string     | null: false                    |
| stage  | string     | null: false                    |
| user   | references | null: false, foreign_key: true |

### Association

- belong_to :user

## actorsテーブル

| Column  | Type       | Options                        |
|---------|------------|--------------------------------|
| time    | float      | null: false                    |
| comment | text       | null: false                    |
| user    | references | null: false, foreign_key: true |

### Association

- belong_to :user
- has_many  :past_acts
- has_many  :past_directs
- has_one   :next_program

## past_actsテーブル

| Column   | Type       | Options                        |
|----------|------------|--------------------------------|
| show     | string     | null: false                    |
| stage    | string     | null: false                    |
| average  | float      | null: false                    |
| high     | float      | null: false                    |
| actor    | references | null: false, foreign_key: true |

### Association

- belong_to :actor

## past_directsテーブル

| Column   | Type       | Options                        |
|----------|------------|--------------------------------|
| show     | string     | null: false                    |
| stage    | string     | null: false                    |
| average  | float      | null: false                    |
| high     | float      | null: false                    |
| actor    | references | null: false, foreign_key: true |

### Association

- belong_to :actor

## next_programsテーブル

| Column   | Type       | Options                        |
|----------|------------|--------------------------------|
| schedule | date       | null: false                    |
| show     | string     | null: false                    |
| stage    | string     | null: false                    |
| author   | string     | null: false                    |
| actor    | references | null: false, foreign_key: true |

### Association

- belong_to :actor