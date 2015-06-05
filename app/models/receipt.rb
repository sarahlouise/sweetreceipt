class Receipt < ActiveRecord::Base
  belongs_to :user
  validates :user, presence: true

  has_many :donations

  validates :title, presence: true
  validates :title, uniqueness: true


  def total_value
  	total_value = 0
  	self.donations.each { |donation| total_value += donation.value }
  	total_value.to_f
  end

end
