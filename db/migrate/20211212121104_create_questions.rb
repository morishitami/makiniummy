class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.boolean :q1,         null: false
      t.boolean :q2,         null: false
      t.boolean :q3,         null: false
      t.boolean :q4,         null: false
      t.boolean :q5,         null: false
      t.boolean :q6,         null: false
      t.boolean :q7,         null: false
      t.boolean :q8,         null: false
      t.boolean :q9,         null: false
      t.boolean :q10,         null: false
      t.boolean :q11,         null: false
      t.boolean :q12,         null: false
      t.boolean :q13,         null: false
      t.boolean :q14,         null: false
      t.boolean :q15,         null: false
      t.boolean :q16,         null: false
      t.boolean :q17,         null: false
      t.boolean :q18,         null: false
      t.boolean :q19,         null: false
      t.boolean :q20,         null: false
      t.boolean :q21,         null: false
      t.boolean :q22,         null: false
      t.boolean :q23,         null: false
      t.boolean :q24,         null: false
      t.boolean :q25,         null: false
      t.boolean :q26,         null: false
      t.boolean :q27,         null: false
      t.boolean :q28,         null: false
      # 29欠番
      t.boolean :q30,         null: false
      t.boolean :q31,         null: false
      t.boolean :q32,         null: false
      t.boolean :q33,         null: false
      t.references :user,    null: false, foreign_key: true
      t.timestamps
    end
  end
end

