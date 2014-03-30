class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :name, null: false
      t.string :slug

      t.timestamps
    end
    add_index :schools, :slug, unique: true
  end
end
