class Donation < ActiveRecord::Base
	belongs_to :receipt
	belongs_to :user
end
