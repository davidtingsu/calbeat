class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name, null: false
      t.string :slug
      t.string :location
      t.column :facebook_id, :bigint
      t.datetime :start_time
      t.datetime :end_time
      t.text :description
      t.references :club, index: true

      t.timestamps
    end
    add_index :events, :name, unique: true
    add_index :events, :slug, unique: true
    add_index :events, :facebook_id, unique: true
  end
end
