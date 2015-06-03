class Receipt < ActiveRecord::Base
  belongs_to :user
  validates :user, presence: true

  has_many :donations

  validates :title, presence: true
  validates :title, uniqueness: true

end
