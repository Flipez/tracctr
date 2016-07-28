class Bill < ApplicationRecord

  belongs_to :wallet
  belongs_to :account

  def payout_url
    "#{self.account.owner.paypal_url}/#{self.amount}"
  end
end
