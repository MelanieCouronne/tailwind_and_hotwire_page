class CreateStories < ActiveRecord::Migration[7.0]
  def change
    create_table :stories do |t|
      t.integer :universe_max_age
      t.integer :universe_min_age
      t.string :universe_name
      t.text :description
      t.string :title
      t.string :cloudinary_key

      t.timestamps
    end
  end
end
