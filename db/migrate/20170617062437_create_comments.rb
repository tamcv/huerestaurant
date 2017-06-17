class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :commenter
      t.text :body
      t.integer :star, :default => 0
      t.references :food_item, foreign_key: true

      t.timestamps
    end
  end
end
