# テーブル設計

* users テーブル

｜ Column   | Type   | Options    |
｜ ------   | ----   | ---------  |
｜ email    | string | null:false |
｜ password | string | null:false |
｜ name     | string | null:false |
｜ profile  | text   | null:false |
｜occupation| text   | null:false |
｜ position | text   | null:false |


* Association
_ has_many  :comments
_ has_many  :prototypes

* prototypesテーブル

｜ Column     | Type   | Options       |
｜ ------     | ----   | ---------     |
｜ title      | string | null:false    |
｜ catch_copy | text   | null:false    |
｜ concept    | text   | null:false    |
｜ image      | ------ | ActiveStorage |
｜ user       | ------ | references    |

* Association
_ has_many  :comments
_ belongs_to :user

* comments テーブル

｜ Column   | Type   | Options    |
｜ ------   | ----   | ---------  |
｜ text     | text   | references |
｜ prototype| ------ | references |

* Association
_ belongs_to :comment
_ belongs_to :user


