class CreateReactions < ActiveRecord::Migration
  def change
    create_table :reactions do |t|
      t.references :comment, index: true, foreign_key: true
      t.references :comment_reply, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
