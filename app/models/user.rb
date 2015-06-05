class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :receipts
  has_many :donations, through: :receipts

	def pending_receipts
		self.receipts.where(pending: true)
	end

	def submitted_receipts
		self.receipts.where(pending: false)
	end

	def pending_receipts_value
		total_value = 0
		self.pending_receipts.each{|receipt| total_value += receipt.total_value }
		total_value
	end

	def submitted_receipts_value
		total_value = 0
		self.submitted_receipts.each{|receipt| total_value += receipt.total_value }
		total_value
	end

end
