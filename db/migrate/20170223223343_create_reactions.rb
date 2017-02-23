class CreateReactions < ActiveRecord::Migration
  def change
    create_table :reactions do |t|
      t.integer :category
      t.references :comment, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
