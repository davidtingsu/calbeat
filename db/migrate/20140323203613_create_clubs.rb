class CreateClubs < ActiveRecord::Migration
  def change
    create_table :clubs do |t|
      t.string :name, null: false
      t.string :slug
      t.string :abbrev
      t.references :school, index: true, null: false
      t.text :introduction
      t.string :website
      t.integer :size
      t.text :requirements
      t.text :meeting
      t.text :address
      t.text :activity_summary
      t.string :contact_person
      t.string :contact_phone
      t.string :contact_email
      t.column :facebook_id, :bigint
      t.string :facebook_url

      t.integer :SGID
      t.string :callink_permalink
      t.string :related_club_ids

      t.timestamps
    end
    add_index :clubs, :name, unique: true
    add_index :clubs, :slug, unique: true
    add_index :clubs, :facebook_id, unique: true
  end
end
