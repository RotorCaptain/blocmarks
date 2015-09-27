class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.integer :user_id
      t.integer  :bookmark_id
      t.timestamps null: false
      t.references :bookmark, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      
    
    end
  end
end
