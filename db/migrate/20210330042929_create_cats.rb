class CreateCats < ActiveRecord::Migration[6.1]
  def change
    create_table :cats do |t|
      t.integer :user_id
      t.string :name
      t.string :string
      t.string :prefectures
      t.text :introduction
      t.string :image

      t.timestamps
    end
  end
end
