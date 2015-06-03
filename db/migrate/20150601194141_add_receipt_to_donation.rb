class AddReceiptToDonation < ActiveRecord::Migration
  def change
    add_reference :donations, :receipt, index: true, foreign_key: true
  end
end
