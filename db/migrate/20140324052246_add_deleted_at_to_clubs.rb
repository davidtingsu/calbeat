class AddDeletedAtToClubs < ActiveRecord::Migration
  def change
    add_column :clubs, :deleted_at, :datetime
    add_index :clubs, :deleted_at
  end
end
