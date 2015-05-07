class CreateNewQuotes < ActiveRecord::Migration
  def change
    create_table :new_quotes do |t|
      t.text :quote
      t.text :author
      t.timestamps null: false
    end
  end
end
