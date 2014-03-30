class CreateCategoriesClubs < ActiveRecord::Migration
  def change
    create_table :categories_clubs, id: false do |t|
      t.belongs_to :club, index: true, null: false
      t.belongs_to :category, index: true, null: false
    end
    add_index :categories_clubs, :club_id
    add_index :categories_clubs, :category_id
    add_index :categories_clubs, [:club_id, :category_id], unique: true
  end
end
