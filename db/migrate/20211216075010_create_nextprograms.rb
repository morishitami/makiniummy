class CreateNextprograms < ActiveRecord::Migration[6.0]
  def change
    create_table :nextprograms do |t|
      t.date       :schedule,     null: false
      t.string     :show,         null: false
      t.string     :stage,        null: false
      t.string     :author,       null: false
      t.references :actor,        null: false, foreign_key: true
      t.timestamps
    end
  end
end
