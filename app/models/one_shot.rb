class OneShot < ApplicationRecord

  belongs_to :owner, class_name: 'User'
  has_many :bullets

  validates :name, presence: true

  def price
    self.bullets.map(&:cost).inject(0, :+)
  end
end
