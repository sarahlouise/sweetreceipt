class CreateDonations < ActiveRecord::Migration
  def change
    create_table :donations do |t|
      t.string :item_category
      t.string :item_type
      t.decimal :value

      t.timestamps null: false
    end
  end
end
