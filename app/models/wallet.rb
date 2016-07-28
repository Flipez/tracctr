class Wallet < ApplicationRecord

  has_many :bills

  belongs_to :user

  def balance
    self.bills.where.not(state: 'paid').sum(:amount).to_f
  end

end
