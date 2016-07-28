class User < ApplicationRecord

  has_and_belongs_to_many :accounts

  has_one :wallet

  validates :username, presence: true
  validates :email, presence: true
  validates :paypal_url, presence: true

  has_secure_password
end
