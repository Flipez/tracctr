class Account < ApplicationRecord

  has_and_belongs_to_many :users
  belongs_to :owner, class_name: 'User'

  validates :name, presence: true
  validates :price, presence: true

  def price_per_member
    members = self.users.to_a.count
    (self.price / members rescue self.price).round(2)
  end

  def bill!
    self.users.each do |user|
      Bill.create!(wallet: user.wallet,
                   account: self,
                   amount: price_per_member,
                   state: :open)
    end
    p "Billed #{self.users.count} member(s)"
  end

end
