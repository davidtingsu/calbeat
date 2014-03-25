class CreateCategoriesClubs < ActiveRecord::Migration
  def change
    create_table :categories_clubs, id: false do |t|
      t.belongs_to :club, index: true
      t.belongs_to :category, index: true
    end
  end
end
