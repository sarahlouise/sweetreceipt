class Donation < ActiveRecord::Base
	belongs_to :receipt
	validates :receipt, presence: true

	belongs_to :user

	validates :item_category, presence: true
	validates :item_type, presence: true
	validates :value, presence: true
end
