class AddDefaultValueToPendingReceipts < ActiveRecord::Migration
  def change
  	  change_column :receipts, :pending, :boolean, :default => true
  	end
end
