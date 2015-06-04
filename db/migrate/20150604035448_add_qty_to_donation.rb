class AddQtyToDonation < ActiveRecord::Migration
  def change
    add_column :donations, :qty, :integer
  end
end
