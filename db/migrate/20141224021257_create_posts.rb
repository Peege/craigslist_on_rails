class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :description
      t.references :category, index: true

      t.timestamps null: false
    end
    add_foreign_key :posts, :categories
  end
end
