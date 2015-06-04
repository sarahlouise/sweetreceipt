class AddPendingToReceipt < ActiveRecord::Migration
  def change
    add_column :receipts, :pending, :boolean
  end
end
